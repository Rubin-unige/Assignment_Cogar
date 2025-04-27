#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from assignment_cogar.srv import AssignTask, AssignTaskResponse, AssignTaskRequest
from assignment_cogar.msg import Order as OrderMsg, RobotStatus as RobotStatusMsg

from threading import Lock

# --------------------------
# Data Models
# --------------------------

class Order:
    def __init__(self, order_id, table_id, dish_name):
        self.order_id = order_id
        self.table_id = table_id
        self.dish_name = dish_name
        self.completion_status = None

class RobotStatus:
    def __init__(self, robot_id, location, status, order_id=None, order_status=None, is_available=True):
        self.robot_id = robot_id
        self.location = location
        self.status = status  
        self.order_id = order_id
        self.order_status = order_status  
        self.is_available = is_available

# --------------------------
# Observer Pattern for ROS Topics
# --------------------------

class TopicObserver:
    def update(self, data):
        raise NotImplementedError

class OrderQueue(TopicObserver):
    def __init__(self):
        self._orders = []
        self._completed_orders = []
        self._lock = Lock()
        
    def update(self, order_msg):
        """Callback for new orders"""
        try:
            order = Order(order_msg.order_id, order_msg.table_id, order_msg.dish_name)
            self.enqueue(order)
            rospy.loginfo(f"Enqueued new order: {order.dish_name} for table {order.table_id}")
        except Exception as e:
            rospy.logerr(f"Error processing Order.msg: {e}")

    def enqueue(self, order):
        """Add an order to the end of the queue"""
        with self._lock:
            self._orders.append(order)
            rospy.logdebug(f"Order {order.order_id} added to queue. Queue size: {len(self._orders)}")

    def dequeue(self):
        """Remove and return the first order from the queue"""
        with self._lock:
            if not self._orders:
                return None
            order = self._orders.pop(0)
            rospy.logdebug(f"Order {order.order_id} dequeued. Queue size: {len(self._orders)}")
            return order

    def is_empty(self):
        """Check if the queue is empty"""
        with self._lock:
            return len(self._orders) == 0

    def size(self):
        """Get current queue size"""
        with self._lock:
            return len(self._orders)
    

class RobotMonitor(TopicObserver):
    def __init__(self):
        self.robot_statuses = {}  # robot_id: RobotStatus
        self.lock = Lock()
        
        # Subscribe to each robot's status topic individually
        self.subscribers = [
            rospy.Subscriber(f'/robot{i}/status', RobotStatusMsg, self.create_callback(f'robot{i}'))
            for i in range(1, 6)
        ]
    
    def create_callback(self, expected_robot_id):
        """Create a callback with robot_id validation"""
        def callback(msg):
            if msg.robot_id != expected_robot_id:
                rospy.logwarn(f"Message from wrong robot! Expected {expected_robot_id}, got {msg.robot_id}")
                return
                
            with self.lock:
                self.robot_statuses[msg.robot_id] = RobotStatus(
                    robot_id=msg.robot_id,
                    location=msg.location,
                    status=msg.status,
                    order_id=msg.order_id,
                    order_status=msg.order_status,
                    is_available=msg.is_available
                )

                if msg.order_status in ["verified", "rejected"] and msg.order_id:
                    self.handle_completed_order(msg.order_id, msg.order_status)
        return callback

    def handle_completed_order(self, order_id, order_status):
        """Log order verification/rejection just once"""
        if not hasattr(self, '_processed_orders'):
            self._processed_orders = set()
        
        if order_id not in self._processed_orders:
            rospy.loginfo(f"Order {order_id} is {order_status.upper()}")
            self._processed_orders.add(order_id)

    def get_available_robots(self):
        """Get list of available robots"""
        with self.lock:
            return [status for status in self.robot_statuses.values() 
                    if status.is_available]

# --------------------------
# Strategy Pattern for Task Assignment
# --------------------------

class TaskAssignmentStrategy:
    def assign_task(self, order, available_robots):
        raise NotImplementedError

class NearestRobotStrategy(TaskAssignmentStrategy):
    def assign_task(self, order, available_robots):
        """Simple strategy: choose the robot nearest to the kitchen"""
        if not available_robots:
            return None
            
        # Dummy implementation: just pick the first available robot
        # In real implementation, we'd calculate distances based on robot.location
        return available_robots[0]

# --------------------------
# Command Pattern for Task Assignment
# --------------------------

class TaskAssignmentCommand:
    def __init__(self, task_assignment, order):
        self.task_assignment = task_assignment
        self.order = order
        
    def execute(self):
        return self.task_assignment.process_order(self.order)

# --------------------------
# Singleton Pattern for Orchestration System
# --------------------------

class OrchestrationSystem:
    _instance = None
    _lock = Lock()
    
    def __new__(cls):
        if cls._instance is None:
            with cls._lock:
                if cls._instance is None:
                    cls._instance = super(OrchestrationSystem, cls).__new__(cls)
                    cls._instance.__initialized = False
        return cls._instance
        
    def __init__(self):
        if self.__initialized:
            return
        self.__initialized = True
        
        # Initialize components
        self.order_queue = OrderQueue()
        self.robot_monitor = RobotMonitor()  # Now uses individual subscriptions
        self.task_assignment = TaskAssignment()
        
        # ROS subscribers
        self.order_sub = rospy.Subscriber('/new_orders', OrderMsg, self.order_queue.update)
  
        # ROS service
        self.assign_task_srv = rospy.Service('/assign_task', AssignTask, self.handle_assign_task)
        
        # Timer for periodic order processing
        self.process_timer = rospy.Timer(rospy.Duration(1.0), self.process_orders)
        
        rospy.loginfo("Orchestration system initialized with direct robot subscriptions")

    def handle_assign_task(self, req):
        """Service handler for task assignment"""
        try:
            order = Order(req.order_id, req.table_id, req.dish_name)
            command = TaskAssignmentCommand(self.task_assignment, order)
            result = command.execute()
            return AssignTaskResponse(success=True, message=result)
        except Exception as e:
            return AssignTaskResponse(success=False, message=str(e))

    def process_orders(self, event=None):
        """Timer callback to process orders"""
        if not self.order_queue.is_empty():
            rospy.logdebug(f"Processing {self.order_queue.size()} orders in queue")
            order = self.order_queue.dequeue()
            if order:
                self.task_assignment.process_orders(order)

class TaskAssignment:
    def __init__(self):
        self.strategy = NearestRobotStrategy()
        
    def process_orders(self, order):
        available_robots = OrchestrationSystem().robot_monitor.get_available_robots()
        
        if not available_robots:
            rospy.logwarn(f"No available robots for order {order.order_id}. Requeuing.")
            OrchestrationSystem().order_queue.enqueue(order)
            return "No available robots"
        
        selected_robot = self.strategy.assign_task(order, available_robots)
        
        if not selected_robot:
            rospy.logwarn(f"No robot selected for order {order.order_id}. Requeuing.")
            OrchestrationSystem().order_queue.enqueue(order)
            return "Strategy failed to assign"

        try:
            # Updated to use robot-specific service
            service_name = f'/{selected_robot.robot_id}/assign_task'
            rospy.wait_for_service(service_name, timeout=2.0)
            assign = rospy.ServiceProxy(service_name, AssignTask)
            resp = assign(AssignTaskRequest(
                order_id=order.order_id,
                table_id=order.table_id,
                dish_name=order.dish_name
            ))
            
            if resp.success:
                rospy.loginfo(f"Assigned order {order.order_id} to {selected_robot.robot_id}")
                return f"Assigned to robot {selected_robot.robot_id}"
            else:
                rospy.logwarn(f"Assignment failed: {resp.message}")
                
        except (rospy.ServiceException, rospy.ROSException) as e:
            rospy.logerr(f"Service call to {service_name} failed: {e}")
        
        # Requeue if anything failed
        OrchestrationSystem().order_queue.enqueue(order)
        return "Failed to assign task"

# --------------------------
# Main
# --------------------------

if __name__ == '__main__':
    rospy.init_node('orchestration_system')
    try:
        system = OrchestrationSystem()
        rospy.loginfo("Orchestration system running...")
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Shutting down orchestration system")