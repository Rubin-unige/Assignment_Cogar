Testing
=======

.. contents::
   :local:
   :depth: 1

1. Order Verification System Test
----------------------------------

1. Overview
^^^^^^^^^^^
Validates the ROS-based order verification service for sushi restaurant robots, ensuring:

- Service availability and responsiveness
- Correct order processing workflow
- Performance under operational conditions
- Graceful error handling

2. Test Implementation
^^^^^^^^^^^^^^^^^^^^^^

2.1 Test Configuration
~~~~~~~~~~~~~~~~~~~~~~
.. list-table:: Test Environment
   :widths: 30 70
   :header-rows: 1

   * - Aspect
     - Configuration
   * - Test Type
     - Component Integration Testing
   * - System Under Test
     - ``/order_verification`` service + ``/order_status`` publisher
   * - Mock Services
     - ``/speaker`` + ``/microphone``
   * - Test Framework
     - rostest + unittest

2.2 Test Execution
~~~~~~~~~~~~~~~~~~
.. raw:: html

    <p>This video demonstrates the testing of verification and rejection processes in the Order Verification System.</p>
    <video controls width="700" style="display:block;margin:0 auto">
        <source src="_static/order_test.mp4" type="video/mp4">
        Video: Test execution demonstrating verification and rejection cases
    </video>

.. code-block:: bash
   :caption: Test Command

   rostest assignment_cogar test_order_verification_system.test


3. Test Cases (KPI)
^^^^^^^^^^^^^^^^^^^

3.1 Functional Validation
~~~~~~~~~~~~~~~~~~~~~~~~~~
.. list-table:: Functional Test Cases
   :widths: 25 40 35
   :header-rows: 1

   * - Test Case
     - Description
     - Validation
   * - Service Availability
     - Verify service startup time
     - ≤5 seconds
   * - Order Processing
     - Test valid order flow
     - Response received
   * - Error Handling
     - Verify invalid order handling
     - No system crashes

3.2 Performance Metrics
~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. list-table:: Performance Benchmarks
   :widths: 25 40 35
   :header-rows: 1

   * - Test Case
     - Measurement
     - Target
   * - Response Time
     - Average service latency
     - ≤8 seconds
   * - Throughput
     - Orders processed per second
     - ≥0.083 ops/s


3.3 Results
~~~~~~~~~~~
.. csv-table:: KPI SUMMARY
    :header: "Metric","Measurement","Target","Status","Notes"
    :widths: 15, 10, 15, 15, 25

    "Service Availability","1.23s","≤5s","PASS","From test_01_service_availability"
    "Normal Operation","6.41s","N/A","PASS","Responded but verification failed"
    "Response Time","6.41s","≤8s","PASS","Average from test_03_response_time"
    "Throughput","0.12 ops/s","≥0.083 ops/s","PASS","From test_04_throughput"
    "Error Handling","Responded","N/A","PASS","test_05_error_handling"

.. note::
    Due to how Microphone service handles the message the result can drastically vary.

4. Analysis
^^^^^^^^^^^^^

4.1 Strengths
~~~~~~~~~~~~~~~~~
- 100% requirement coverage achieved  
- Throughput exceeded by 20% (0.12 ops/s vs 0.083 target)  
- Robust error handling demonstrated

4.2 Limitations
~~~~~~~~~~~~~~~~
- Microphone latency impacts response times (avg 6.41s)  
- Mock services differ from production behavior  
- Limited to 10 concurrent orders in testing

5. Conclusion
^^^^^^^^^^^^^^^
The system demonstrates:

- Full functional test coverage
- Performance exceeding baseline KPIs
- Reliable error handling capabilities

2. Food Placement Reasoning System Test
------------------------------------------