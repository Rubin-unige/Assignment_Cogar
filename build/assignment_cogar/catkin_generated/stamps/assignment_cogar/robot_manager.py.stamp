#!/usr/bin/env python

import rospy
import threading
from assignment_cogar.srv import AssignTask, AssignTaskResponse
from assignment_cogar.srv import VerifyOrder, VerifyOrderRequest
from assignment_cogar.msg import RobotStatus, OrderStatus, TableStatus
from assignment_cogar.srv import TriggerAnalysis, TriggerAnalysisResponse, TriggerAnalysisRequest
from assignment_cogar.srv import FoodPlacer, FoodPlacerResponse, FoodPlacerRequest
from std_msgs.msg import String

class RobotManager:
    def __init__(self, robot_id):
        self.robot_id = robot_id
        self.current_order = None
        self.is_available = True
        self.location = "station"
        self.status = "idle"
        self.verification_result = None
        self.table_status_sub = None  # Will be initialized when needed

        # Publishers
        self.status_pub = rospy.Publisher('status', RobotStatus, queue_size=10)
        self.notify_pub = rospy.Publisher('/staff_notification', String, queue_size=1)

        # Subscribers
        self.order_status_sub = rospy.Subscriber('/order_status', OrderStatus, self.order_status_callback)

        # Service
        self.task_service = rospy.Service(f'/{self.robot_id}/assign_task', AssignTask, self.handle_task_assignment)

        # Timer to regularly publish robot status
        rospy.Timer(rospy.Duration(1.0), self.publish_status)

        # Wait for the verification service to become available
        rospy.wait_for_service('/order_verification')

        rospy.loginfo(f"[{self.robot_id}] RobotManager node ready.")

    def publish_status(self, event=None):
        msg = RobotStatus()
        msg.robot_id = self.robot_id
        msg.location = self.location
        msg.status = self.status
        msg.order_status = self.current_order['order_status'] if self.current_order else ''
        msg.order_id = self.current_order['order_id'] if self.current_order else ''
        msg.is_available = self.is_available
        self.status_pub.publish(msg)

    def handle_task_assignment(self, req):
        if not self.is_available:
            return AssignTaskResponse(success=False, message="Robot is currently busy")

        order_copy = {
            'order_id': req.order_id,
            'table_id': req.table_id,
            'dish_name': req.dish_name,
            'order_status': 'assigned'
        }

        self.current_order = order_copy
        self.is_available = False
        self.status = "moving"
        self.location = "moving"

        rospy.loginfo(f"[{self.robot_id}] Moving to table {req.table_id} for order {req.order_id}")
        threading.Thread(target=self.start_task_flow, args=(order_copy,)).start()

        return AssignTaskResponse(success=True, message="Task accepted")

    def start_task_flow(self, order):
        rospy.sleep(2.0)
        self.location = f"table{order['table_id']}"
        self.status = "serving"
        order['order_status'] = "serving"
        self.current_order = order  
        self.publish_status()
        rospy.loginfo(f"[{self.robot_id}] Arrived at table {order['table_id']}, starting verification...")

        self.perform_verification(order['dish_name'])


    def perform_verification(self, dish_name):
        try:
            verify = rospy.ServiceProxy('/order_verification', VerifyOrder)
            req = VerifyOrderRequest(robot_id=self.robot_id, dish_name=dish_name)
            verify(req)
            rospy.loginfo(f"[{self.robot_id}] Verification request sent.")
        except rospy.ServiceException as e:
            rospy.logerr(f"[{self.robot_id}] Verification service failed: {e}")
            self.current_order['order_status'] = "rejected"
            self.finish_task()
            return

        # Wait for order status result
        timeout = rospy.Time.now() + rospy.Duration(10)
        rate = rospy.Rate(2)
        while rospy.Time.now() < timeout:
            if self.verification_result:
                break
            rate.sleep()

        if not self.verification_result:
            rospy.logwarn(f"[{self.robot_id}] Verification timeout — assuming rejected.")
            self.current_order['order_status'] = "rejected"
        else:
            self.current_order['order_status'] = self.verification_result

        self.finish_task()

    def order_status_callback(self, msg):
        if (msg.robot_id == self.robot_id and self.current_order 
            and msg.dish_name == self.current_order['dish_name']):
            self.verification_result = msg.status  # "verified" or "rejected"
            rospy.loginfo(f"[{self.robot_id}] Order verification result: {msg.status}")

            if msg.requires_staff_attention:
                notify_msg = String(data=f"Robot {self.robot_id} needs staff assistance at table.")
                self.notify_pub.publish(notify_msg)
                rospy.logwarn(f"[{self.robot_id}] Staff notified due to rejection.")

    def finish_task(self):
        if self.current_order['order_status'] == "rejected":
            # Handle rejection
            self.handle_rejection()
        else:
            # Handle verified order
            self.handle_verified_order()

    def handle_rejection(self):
        """Handle order rejection workflow"""
        self.status = "notifying staff"
        self.is_available = False
        self.publish_status()
        rospy.sleep(2.0)

        self.status = "moving"
        self.location = "moving"
        self.publish_status()
        rospy.sleep(2.0)

        self.location = "station"
        self.status = "idle"
        self.is_available = True
        self.current_order = None
        self.verification_result = None
        rospy.loginfo(f"[{self.robot_id}] Returned to station after rejection.")

    def handle_verified_order(self):
        """Handle verified order workflow"""
        rospy.loginfo(f"[{self.robot_id}] Order verified - triggering visual analysis...")
        
        try:
            # 1. Subscribe to our robot-specific topic FIRST
            self.table_status_sub = rospy.Subscriber(
                f'/table_status/{self.robot_id}',
                TableStatus,
                self.table_status_callback
            )
            
            # 2. Trigger analysis service
            rospy.wait_for_service('/trigger_visual_analysis', timeout=5.0)
            trigger = rospy.ServiceProxy('/trigger_visual_analysis', TriggerAnalysis)
            resp = trigger(self.robot_id)  # Pass our robot_id
            
            if resp.success:
                rospy.loginfo(f"[{self.robot_id}] Analysis triggered - waiting for results...")
                # Set timeout timer
                self.table_status_timeout = rospy.Timer(
                    rospy.Duration(5.0),
                    self.handle_table_status_timeout,
                    oneshot=True
                )
            else:
                rospy.logwarn(f"[{self.robot_id}] Analysis service returned failure")
                self.cleanup_and_return()
                
        except rospy.ServiceException as e:
            rospy.logerr(f"[{self.robot_id}] Service call failed: {e}")
            self.cleanup_and_return()
        except rospy.ROSException as e:
            rospy.logerr(f"[{self.robot_id}] Service unavailable: {e}")
            self.cleanup_and_return()

    def table_status_callback(self, msg):
        """Handle our robot-specific table status updates"""
        rospy.loginfo(f"[{self.robot_id}] Received OUR table status: {msg.status}")
        
        # Cancel timeout timer
        if hasattr(self, 'table_status_timeout'):
            self.table_status_timeout.shutdown()
            
        # Process the status
        self.process_table_status(msg)
        
        # Cleanup
        self.cleanup_and_return()

    # In RobotManager class (modify just the relevant parts)

    def process_table_status(self, status_msg):
        """Process the table status and call our dedicated FoodPlacer service"""
        rospy.loginfo(f"[{self.robot_id}] Processing table status: {status_msg.status}")
        
        try:
            # Each robot calls its own FoodPlacer service
            service_name = f'/{self.robot_id}/food_placer_service'
            rospy.wait_for_service(service_name, timeout=5.0)
            food_placer = rospy.ServiceProxy(service_name, FoodPlacer)

            # Prepare and send request
            req = FoodPlacerRequest()
            req.status = status_msg.status
            req.has_empty_plate = status_msg.has_empty_plate
            req.robot_id = self.robot_id  

            resp = food_placer(req)

            if resp.success:
                rospy.loginfo(f"[{self.robot_id}] Food placed successfully")

                self.status = "moving"
                self.location = "moving"
                self.is_available = True
                self.publish_status()
                rospy.sleep(2.0)
            else:
                rospy.logwarn(f"[{self.robot_id}] Food placement failed: {resp.message}")

        except rospy.ServiceException as e:
            rospy.logerr(f"[{self.robot_id}] FoodPlacer service call failed: {e}")
        except rospy.ROSException as e:
            rospy.logerr(f"[{self.robot_id}] FoodPlacer service unavailable: {e}")

    def handle_table_status_timeout(self, event):
        """Handle case where no table status was received"""
        rospy.logwarn(f"[{self.robot_id}] Table status timeout - no response received")
        self.cleanup_and_return()

    def cleanup_and_return(self):
        """Common cleanup and return to station"""
        
        # Return to station
        self.status = "moving"
        self.location = "moving"
        self.publish_status()
        rospy.sleep(2.0)
        
        self.location = "station"
        self.status = "idle"
        self.is_available = True
        rospy.loginfo(f"[{self.robot_id}] Task completed - returned to station")

if __name__ == '__main__':
    rospy.init_node('robot_manager')
    robot_id = rospy.get_param('~robot_id', 'robot1')
    try:
        manager = RobotManager(robot_id)
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo(f"[{robot_id}] Robot manager shutting down.")