Orchestration System
====================

.. contents::
   :local:
   :depth: 1

1. System Overview
-------------------
The Orchestration System is the core coordination unit in a sushi restaurant that manages autonomous robots. It ensures efficient order processing by coordinating the robots and tracking their tasks. The key responsibilities of the system include:

    - **Receiving Customer Orders**: Accepts new orders from external systems and processes them in a queue.
    - **Task Assignment**: Assigns orders to available robots based on their status, proximity, and capabilities.
    - **Real-time Monitoring**: Continuously tracks robot statuses, including availability and task completion.
    - **Failure Handling**: Manages task assignment retries in case of robot unavailability or malfunction.
    - **Efficiency Optimization**: Ensures orders are processed promptly, with robots selected based on availability, priority, and task requirements.

.. figure:: _static/orchestrator.png
    :alt: Orchestration System Architecture
    :align: center
    :width: 600

    **Figure 2 :** Orchestration System Architecture

2. Core Components
-------------------
The Orchestration System consists of three primary components:

1. **Order Queue**: Handles incoming customer orders and manages the order processing lifecycle.
2. **Robot Monitor**: Monitors the real-time status of robots, including availability, task progress and location.
3. **Task Assigner**: Manages the assignment of tasks to robots, considering robot availability.

1. Order Queue
^^^^^^^^^^^^^^
**Function**:
    - Receives and buffers customer orders in a thread-safe manner.
    - Implements FIFO (First-In-First-Out) logic to ensure that orders are processed in the sequence they arrive.

**Interfaces**:
    .. csv-table:: Order Queue Communication
        :header: "Direction", "Endpoint", "Type", "Format", "Purpose", "Stateless/Stateful", "Strongly Typed"
        :widths: 10, 20, 15, 20, 25, 10, 10

        "Input", "/new_orders", "ROS Topic", "Order.msg", "Receives new customer orders.", "Stateless", "Yes"  
        "Output", "Internal API", "Method Call", "Order object", "Passes orders to Task Assigner.", "Stateful", "Yes"  

2. Robot Monitor
^^^^^^^^^^^^^^^^^
**Function**:
    - Tracks the real-time status of all robots, including location, availability, and task progress.
    - Detects robot malfunctions and other failures, reporting unavailability to the system.
    - Ensures that only available robots are considered for task assignments.

**Interfaces**:
    .. csv-table:: Robot Monitor Communication
        :header: "Direction", "Endpoint", "Type", "Format", "Purpose", "Stateless/Stateful", "Strongly Typed"
        :widths: 10, 20, 15, 20, 25, 10, 10

        "Input", "/robot{1-5}/status", "ROS Topic", "RobotStatus.msg", "Receives robot status updates.", "Stateful", "Yes"  
        "Output", "Internal API", "Method Call", "List[RobotStatus]", "Provides robot status to Task Assigner.", "Stateful", "Yes"  

3. Task Assigner
^^^^^^^^^^^^^^^^
**Function**:
    - Selects an available robot based on proximity and robot availability.
    - Manages task assignment for each incoming order, ensuring that a robot is available to handle the task.
    - Handles retries by re-enqueuing orders when a task assignment fails.

**Interfaces**:
    .. csv-table:: Task Assigner Communication
        :header: "Direction", "Endpoint", "Type", "Format", "Purpose", "Stateless/Stateful", "Strongly Typed"
        :widths: 10, 20, 15, 20, 25, 10, 10

        "Output", "/robot{1-5}/assign_task", "ROS Service", "AssignTask.srv", "Sends task assignments.", "Stateful", "Yes"  
        "Input", "Internal API", "Method Call", "Order object", "Receives orders from Order Queue.", "Stateful", "Yes"  
        "Input", "Internal API", "Method Call", "List[RobotStatus]", "Receives robot availability data.", "Stateful", "Yes"  

**Task Assignment Strategy**:
    - Currently, tasks are assigned based solely on **robot availability**.
  
.. note::
   The system currently utilizes basic selection strategies based on robot **availability**, but the **Strategy Pattern** allows future integration of additional selection strategies that may include robot **location**, **task history**, or other criteria for optimization.


3. System Integration
----------------------
The Orchestration System integrates with several external systems, which is essential for its proper functioning. The communication points with these external systems are detailed below.

.. csv-table:: External System Communication
    :header: "System", "Direction", "Interface", "Type", "Data Format", "Stateless/Stateful", "Strongly Typed"
    :widths: 15, 10, 15, 15, 25, 10, 10
  
    "Order Management", "Input", "/new_orders", "ROS Topic", "order_id, table_id, dish_name", "Stateless", "Yes"
    "Robot Fleet", "Output", "/robot{1-5}/assign_task", "ROS Service", "order_id, table_id, dish_name", "Stateful", "Yes"
    "Robot Fleet", "Input", "/robot{1-5}/status", "ROS Topic", "robot_id, location, is_available", "Stateful", "Yes"

Design Patterns
^^^^^^^^^^^^^^^
The Orchestration System employs several design patterns to ensure scalability, maintainability, and flexibility:

1. **Observer Pattern**: 
    - The `OrderQueue` and `RobotMonitor` observe changes in the system (new orders, robot statuses). When changes occur (e.g., a new order is placed or a robot’s status changes), these observers update their internal state.
  
2. **Strategy Pattern**: 
    - The `TaskAssignment` class uses the `TaskAssignmentStrategy` to define a family of algorithms for robot selection. Currently, the `NearestRobotStrategy` selects the first available robot. This can be extended to other strategies based on location, workload, etc.

3. **Command Pattern**: 
    - The `TaskAssignmentCommand` encapsulates the task assignment request as an object, which is executed when needed. This decouples the task assignment logic from the rest of the system and allows for easy extension.

4. **Singleton Pattern**: 
    - The `OrchestrationSystem` class is implemented as a Singleton, ensuring that only one instance of the orchestration system exists. This ensures consistency and avoids multiple instances of the orchestration system managing state.

5. **Factory Pattern** (Implicit): 
    - Task assignment requests are created dynamically based on robot status and order details, abstracting away the complexities of object creation.

4. Behavioral Diagram
----------------------

1. Sequence Diagram
^^^^^^^^^^^^^^^^^^^^

.. figure:: _static/orchestrator_system_sequence.png
    :alt: Orchestration System Workflow
    :align: center
    :width: 1000

    **Figure 3 :** Orchestration System Sequence Diagram

The sequence diagram shows the complete order processing lifecycle, including the critical steps that ensure tasks are completed efficiently. Key stages are outlined below:

1. **Order Reception**:
    - External systems send new orders (``OrderMsg``) to the **OrderQueue**.
    - Each order contains essential information such as ``order_id``, ``table_id``, and ``dish``.

2. **Status Update Phase** (1Hz cycle):
    - Robots periodically send their status updates to **RobotMonitor**.
    - **RobotMonitor** processes and maintains real-time availability data for each robot.

3. **Task Assignment**:
    - The **TaskAssigner** retrieves orders from the **OrderQueue** and checks the **RobotMonitor** for available robots.
    - Robots are selected based on a priority-based strategy:
        * **Robot1** is the first choice, followed by **Robot2** if **Robot1** is unavailable.
        * If no robots are available, the order is requeued for retry.

4. **Execution Outcomes**:
    - **Successful Assignment**: The selected robot executes the task and reports the outcome (verified/rejected).
    - **Failed Assignment**: The order is automatically requeued, and retry attempts are made (up to 3 retries with delays).

2. StateMachine Diagram
^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: _static/orchestrator_statemachine.png
   :alt: State machine of Orchestration System
   :align: center
   :width: 600
   
   **Figure 4 :** Orchestration System StateMachine Diagram

The state machine of the Orchestration System models the complete lifecycle of an order—from reception to successful task completion. This architecture ensures reliable task assignment, robot availability management, and real-time order verification. Below is a detailed description of each state and its transitions:

1. **Idle**:
    - The system begins in the `Idle` state, waiting for incoming orders.
    - When a new order is published to the `/new_orders` topic, the system transitions to `Receiving Orders`.

2. **Receiving Orders**:
    - Triggered upon receiving a new order message.
    - The system extracts order details, such as `order_id`, `table_id`, and `dish_name`.
    - It immediately transitions to `Enqueue Order`.

3. **Enqueue Order**:
    - The received order is added to the internal `OrderQueue`.
    - Once enqueued, the system moves to `Waiting For Orders`.

4. **Waiting For Orders**:
    - This is a timed state where the system checks the queue for pending orders.
    - If the queue is empty, it loops back to `Idle`.
    - If orders are available, the system transitions to `Assign Task`.

5. **Assign Task**:
    - The system evaluates available robots that can fulfill the order.
    - If no robots are free, it moves to `No Robots Available`.
    - If one or more robots are available, it transitions to `Assign Task to Robot`.

6. **No Robots Available**:
    - Indicates that no robots are currently free to take on new tasks.
    - The order is temporarily requeued for future processing.
    - The system then transitions to `Requeue Order`.

7. **Requeue Order**:
    - The order is placed back into the queue.
    - The system transitions back to `Waiting For Orders` to retry later.

8. **Assign Task to Robot**:
    - A robot is selected using the assignment strategy (e.g., based on availability or proximity).
    - The order is dispatched to the selected robot via its `/robotX/assign_task` service.
    - If the service call is successful, the system transitions to `Robot Monitoring`.
    - If the service call fails, it transitions to `Assignment Failure`.

9. **Assignment Failure**:
    - The task assignment failed (e.g., due to a service error).
    - The order is requeued, and the system transitions to `Requeue Order`.

10. **Robot Monitoring**:
        - The system continuously monitors the robot's status updates on its `/robotX/status` topic.
        - Once the robot reports an `order_status` of either `verified` or `rejected`, the system moves to `Task Completed`.

11. **Task Completed**:
        - The task has been completed, and the result (verified or rejected) is recorded.
        - The order is considered finalized.
        - The system transitions back to `Idle`, ready to receive and process the next order.

