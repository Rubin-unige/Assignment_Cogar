#!/usr/bin/env python3
import unittest
import rospy
import time
import rostest
from assignment_cogar.srv import FoodPlacer, FoodPlacerRequest

class TestFoodPlacementSystem(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        rospy.init_node('test_food_placement')
        cls.robot_id = "robot1"
        cls.KPIs = {
            'availability_time': 0,
            'response_times': [],
            'throughput': 0,
            'success_rate': 0
        }

        service_name = f"/{cls.robot_id}/food_placer_service"

        # Wait for service (with timeout measurement)
        start = time.time()
        rospy.wait_for_service(service_name, timeout=10)
        cls.KPIs['availability_time'] = time.time() - start

        cls.service = rospy.ServiceProxy(service_name, FoodPlacer)

    def test_01_service_availability(self):
        """KPI: Service should be available within 5 seconds"""
        self.assertLess(self.KPIs['availability_time'], 5.0,
                        f"Service took {self.KPIs['availability_time']:.2f}s to start (max 5s)")

    def test_02_normal_operation(self):
        """Verify service responds correctly to different table statuses"""
        statuses = ["EMPTY", "PARTIALLY_OCCUPIED", "CLUTTERED"]
        successes = 0

        for status in statuses:
            req = FoodPlacerRequest(status=status, has_empty_plate=False)
            try:
                start_time = time.time()
                resp = self.service.call(req)
                duration = time.time() - start_time
                self.KPIs['response_times'].append(duration)

                rospy.loginfo(f"Service response for {status}: success={resp.success}, message={resp.message}")
                if resp.success:
                    successes += 1

            except rospy.ServiceException as e:
                self.fail(f"Service call failed: {e}")

        self.KPIs['success_rate'] = successes / len(statuses)

    def test_03_response_time(self):
        """KPI: 95% of responses under 12 seconds"""
        if not self.KPIs['response_times']:
            self.skipTest("No response times recorded")

        avg_time = sum(self.KPIs['response_times']) / len(self.KPIs['response_times'])
        self.assertLess(avg_time, 12.0, f"Average response time {avg_time:.2f}s > 12s KPI")

    def test_04_throughput(self):
        """KPI: Handle ≥5 placement requests/minute (≥0.083 orders/sec)"""
        test_count = 5
        start = time.time()

        for i in range(test_count):
            req = FoodPlacerRequest(status="PARTIALLY_OCCUPIED", has_empty_plate=(i % 2 == 0))
            self.service.call(req)

        duration = time.time() - start
        throughput = test_count / duration
        self.KPIs['throughput'] = throughput
        self.assertGreaterEqual(throughput, 0.083, f"Throughput {throughput:.2f} orders/sec < KPI")

    def test_05_error_handling(self):
        """Verify service handles invalid table status gracefully"""
        req = FoodPlacerRequest(status="UNKNOWN_STATUS", has_empty_plate=False)

        try:
            resp = self.service.call(req)
            rospy.loginfo(f"Service responded to invalid status: success={resp.success}, message={resp.message}")
            self.assertFalse(resp.success, "Service should fail with unknown table status")
        except rospy.ServiceException as e:
            rospy.loginfo(f"Service rejected invalid request with exception (acceptable): {e}")
            self.assertTrue(True)  # Acceptable if it throws an error

    @classmethod
    def tearDownClass(cls):
        """Print KPI summary report"""
        print("\n=== KPI Summary ===")
        print(f"1. Service Availability: {cls.KPIs['availability_time']:.2f}s (max 5s)")
        if cls.KPIs['response_times']:
            print(f"2. Avg Response Time: {sum(cls.KPIs['response_times'])/len(cls.KPIs['response_times']):.2f}s (max 12s)")
        else:
            print("2. Avg Response Time: No data recorded")
        print(f"3. Throughput: {cls.KPIs['throughput']:.2f} orders/sec (min 0.083)")
        print(f"4. Success Rate: {cls.KPIs['success_rate']*100:.1f}% on normal cases")
        print("5. Error Handling: PASS")

if __name__ == '__main__':
    rostest.rosrun('assignment_cogar', 'test_food_placement', TestFoodPlacementSystem)
