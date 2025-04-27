Robot Manager System 
=====================

.. contents::
   :local:
   :depth: 1

.. index::
   Robot Manager
   
1. System Overview
-------------------

The `RobotManager` node represents the core logic and control system for a single service robot within an automated restaurant environment. It integrates with a centralized orchestrator and multiple ROS interfaces to execute tasks such as food delivery, order verification, and environmental analysis.

.. figure:: _static/robot_manager.png
   :alt: Robot Manager System Architecture
   :align: center
   :width: 600

   **Figure 8 :** Robot Manager System Architecture.

**Responsibilities**

Each instance of `RobotManager` manages a specific robot and is responsible for:
    - Accepting task assignments
    - Navigating to the appropriate table
    - Verifying customer orders
    - Reporting task status
    - Triggering and reacting to visual analysis
    - Coordinating food placement
    - Returning to base and updating availability


.. note::

   There are **5 RobotManager nodes** running in parallel, each representing an individual robot
   (e.g., ``robot1``, ``robot2``, ..., ``robot5``). These nodes operate independently, each handling task assignments, verification flows, and post-processing logic specific to their robot.


2. ROS Interfaces
------------------

**Services (Server)**
    .. csv-table:: Services Provided by RobotManager
        :header: "Service Name", "Type", "Message", "Stateless/Stateful", "Strongly Typed", "Description"
        :widths: 20, 15, 20, 15, 10, 30

        "/robotX/assign_task", "ROS Service", "AssignTask.srv", "Stateful", "Yes", "Accepts task assignments (tracks robot state)"

**Services (Client)**

    .. csv-table:: Services Called by RobotManager
        :header: "Called Service", "Type", "Message", "Stateless/Stateful", "Strongly Typed", "Description"
        :widths: 20, 15, 20, 15, 10, 30

        "/order_verification", "ROS Service", "VerifyOrder.srv", "Stateless", "Yes", "Initiates order verification"
        "/trigger_visual_analysis", "ROS Service", "TriggerAnalysis.srv", "Stateless", "Yes", "Triggers table analysis"
        "/robotX/food_placer_service", "ROS Service", "FoodPlacer.srv", "Stateful", "Yes", "Handles robot-specific food placement"

**Publishers**

    .. csv-table:: Topics Published by RobotManager
        :header: "Topic", "Type", "Message", "Stateless/Stateful", "Strongly Typed", "Purpose"
        :widths: 20, 15, 20, 15, 10, 30

        "/status", "ROS Topic", "RobotStatus.msg", "Stateful", "Yes", "Broadcasts robot state (1Hz)"
        "/staff_notification", "ROS Topic", "String.msg", "Stateless", "Yes", "Alerts staff when needed"


**Subscribers**

    .. csv-table:: Topics Subscribed by RobotManager
        :header: "Topic", "Type", "Message", "Stateless/Stateful", "Strongly Typed", "Purpose"
        :widths: 20, 15, 20, 15, 10, 30

        "/order_status", "ROS Topic", "OrderStatus.msg", "Stateful", "Yes", "Receives verification results"
        "/table_status/robotX", "ROS Topic", "TableStatus.msg", "Stateful", "Yes", "Receives robot-specific table analysis"

3. Behavioral Flow
-------------------

1. **Task Assignment**
    - Orchestrator sends an order via `/robotX/assign_task`.
    - If available, the robot accepts and begins the delivery process.

2. **Navigation & Serving**
    - The robot simulates travel to the target table.
    - On arrival, it switches to verification mode.

3. **Order Verification**
    - Calls `/order_verification` service.
    - Waits for result on `/order_status`.
    - If `rejected`:
        - Publishes a staff alert to `/staff_notification`
        - Returns to base without completing order.

4. **Visual Analysis**
    - If `verified`, triggers `/trigger_visual_analysis`.
    - Waits for `/table_status/robotX` update with visual feedback (e.g., plate detected, table condition).

5. **Food Placement**
    - After a successful table scan, the robot initiates the food placement by calling `/robotX/food_placer_service`.
    - If placement is successful:
        - The robot has **successfully placed the food on the customer's table**.
        - This marks the **fulfillment of the delivery task**.
        - The robot updates its internal state to indicate task completion.
    - If the service returns failure:
        - A warning is logged.
        - The robot proceeds to return to base.
        - The delivery is considered failed, and follow-up may be required.

6. **Completion**
    - Robot returns to its base ("station").
    - It marks itself as idle and available for the next assignment by publishing to `/status`.


4. Robustness Features
-----------------------

- **Asynchronous Execution** using threads.
- **Timeout Handling** for missing verification or analysis.
- **Staff Notification** on task rejection.
- **Per-Robot Customization** via namespaced topics and services.

5. Integration Point Summary
-----------------------------

.. csv-table:: High-Level Communication Overview
    :header: "Integration", "Type", "Direction", "Stateless/Stateful", "Strongly Typed", "Description"
    :widths: 20, 15, 10, 15, 10, 30

    "Orchestrator → Robot", "Service", "Input", "Stateful", "Yes", "/robotX/assign_task"
    "Robot → System", "Topic", "Output", "Stateful", "Yes", "/status broadcasts"
    "Robot → Staff", "Topic", "Output", "Stateless", "Yes", "/staff_notification alerts"
    "Robot → Verification", "Service", "Output", "Stateless", "Yes", "/order_verification"
    "Verification → Robot", "Topic", "Input", "Stateful", "Yes", "/order_status updates"
    "Robot → Visual", "Service", "Output", "Stateless", "Yes", "/trigger_visual_analysis"
    "Visual → Robot", "Topic", "Input", "Stateful", "Yes", "/table_status/robotX results"
    "Robot → Food", "Service", "Output", "Stateful", "Yes", "/robotX/food_placer_service"