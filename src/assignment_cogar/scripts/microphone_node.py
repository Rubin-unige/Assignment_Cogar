#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import random

def microphone_node():
    rospy.init_node('microphone_node')
    pub = rospy.Publisher('/mic_input', String, queue_size=10)
    rate = rospy.Rate(0.2)  # Every 5 seconds

    simulated_inputs = ["yes", "wrong order", "okay", "please repeat"]

    while not rospy.is_shutdown():
        msg = random.choice(simulated_inputs)
        rospy.loginfo(f"[Mic] Heard: {msg}")
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        microphone_node()
    except rospy.ROSInterruptException:
        pass

