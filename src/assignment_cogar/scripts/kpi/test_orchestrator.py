#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import time

order_pub = None
order_received = False
start_time = 0

def order_callback(msg):
    global order_received, start_time
    if "robot_" in msg.data:
        elapsed = time.time() - start_time
        rospy.loginfo(f"[TEST] Orchestrator responded in {elapsed:.3f} seconds")
        order_received = True

def test_orchestrator_response():
    global order_pub, order_received, start_time

    rospy.init_node('test_orchestrator', anonymous=True)

    # Subscribe to the orders topic (where orchestrator publishes orders)
    rospy.Subscriber("/orders", String, order_callback)
    order_pub = rospy.Publisher("/new_orders", String, queue_size=10)

    rospy.sleep(1)  # Wait for connections

    test_order = "Sushi A|Table 1"
    rospy.loginfo("[TEST] Sending test order to orchestrator...")

    start_time = time.time()
    order_pub.publish(test_order)

    timeout = 5  # seconds
    rate = rospy.Rate(10)
    start_wait = time.time()
    while not rospy.is_shutdown() and not order_received:
        if time.time() - start_wait > timeout:
            rospy.logwarn("[TEST] Orchestrator did not respond within timeout!")
            break
        rate.sleep()

if __name__ == '__main__':
    try:
        test_orchestrator_response()
    except rospy.ROSInterruptException:
        pass
