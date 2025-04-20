#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from std_srvs.srv import Trigger

def mic_callback(msg):
    rospy.loginfo(f"[Verification] Heard: {msg.data}")
    if "wrong" in msg.data or "no" in msg.data:
        rospy.logwarn("[Verification] Order disputed! Notifying staff.")
    else:
        rospy.loginfo("[Verification] Order confirmed.")

    call_speaker()

def call_speaker():
    rospy.wait_for_service('/speaker_service')
    try:
        speak = rospy.ServiceProxy('/speaker_service', Trigger)
        response = speak()
        rospy.loginfo(f"[Speaker] Response: {response.success}")
    except rospy.ServiceException as e:
        rospy.logerr(f"[Speaker] Failed: {e}")

def order_verification():
    rospy.init_node('order_verification_node')
    rospy.Subscriber('/mic_input', String, mic_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        order_verification()
    except rospy.ROSInterruptException:
        pass

