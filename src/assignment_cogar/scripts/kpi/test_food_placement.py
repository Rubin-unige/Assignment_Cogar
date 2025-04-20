#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import time

placement_pub = None
placement_ack_received = False
start_time = 0

def ack_callback(msg):
    global placement_ack_received, start_time
    if "placed" in msg.data or "success" in msg.data:
        elapsed = time.time() - start_time
        rospy.loginfo(f"[TEST] Food Placement succeeded in {elapsed:.3f} seconds")
        placement_ack_received = True

def test_food_placement():
    global placement_pub, placement_ack_received, start_time

    rospy.init_node('test_food_placement', anonymous=True)

    rospy.Subscriber("/placement_result", String, ack_callback)
    placement_pub = rospy.Publisher("/food_placement", String, queue_size=10)

    rospy.sleep(1)  # Wait for connections

    test_input = "Table 1|Dish A"
    rospy.loginfo("[TEST] Sending simulated food placement request...")

    start_time = time.time()
    placement_pub.publish(test_input)

    timeout = 5  # seconds
    rate = rospy.Rate(10)
    start_wait = time.time()
    while not rospy.is_shutdown() and not placement_ack_received:
        if time.time() - start_wait > timeout:
            rospy.logwarn("[TEST] No placement confirmation within timeout!")
            break
        rate.sleep()

if __name__ == '__main__':
    try:
        test_food_placement()
    except rospy.ROSInterruptException:
        pass

