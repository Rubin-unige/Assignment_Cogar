Implementation
==============

.. contents::
   :local:
   :depth: 1

1. System Setup
----------------

**Initial Setup:**

.. code-block:: bash
   :caption: Terminal - Initial Setup

   git clone https://github.com/Rubin-unige/Assignment_Cogar.git
   cd Assignment_Cogar
   catkin_make
   source devel/setup.bash

2. Launching the System
-----------------------

Launch the system components in separate terminals in the following order:

1. **Orchestration System** (Central Control)

.. code-block:: bash
    :caption: Terminal 1 - Control Center

    roslaunch assignment_cogar orchestrator.launch

2. **Robot Fleet** (5 TIAGo Waiters)

.. code-block:: bash
    :caption: Terminal 2 - Robot Team

    roslaunch assignment_cogar robots.launch

3. **Order Verification System** (Customer Interaction)

.. code-block:: bash
    :caption: Terminal 3 - Order Validation

    roslaunch assignment_cogar order_verification.launch

4. **Food Placement System** (Table Service)

.. code-block:: bash
    :caption: Terminal 4 - Serving Logic

    roslaunch assignment_cogar food_placement.launch

.. important::
   - Launch components in this exact sequence for proper initialization
   - Each terminal will display its component's operational logs
   - Wait for each component to fully initialize (look for "READY" messages) before launching the next

3. Testing the Implementation
------------------------------
1. **Testing Order Verification System**

.. code-block:: bash
    :caption: Terminal 1 - Order Verification System Test

    rostest assignment_cogar test_order_verification_system.test

2. **Testing Food Placement Reasoning System**

.. code-block:: bash
    :caption: Terminal 2 - Food Placement Reasoning System Test

    rostest assignment_cogar test_food_placement_system.test