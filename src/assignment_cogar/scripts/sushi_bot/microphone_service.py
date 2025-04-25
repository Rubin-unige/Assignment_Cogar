#!/usr/bin/env python3

import rospy
import random
from assignment_cogar.srv import Microphone, MicrophoneResponse

# Simulated responses: "yes", "no", or "" (no response)
RESPONSES = ["yes", "no", ""]

def handle_microphone_request(req):
    rospy.sleep(2)  # Simulate listening delay

    # 10% chance the microphone "fails"
    if random.randint(1, 100) <= 5:
        rospy.logwarn("Microphone failed to process audio.")
        raise rospy.ServiceException("Microphone malfunction")

    # If we reach here, we have a 90% chance for "yes", 5% for "no", and 5% for ""
    rand_val = random.randint(1, 100)

    if rand_val <= 90:
        response = "yes"
    elif rand_val <= 95:
        response = "no"
    else:
        response = ""

    rospy.loginfo(f"Microphone heard: '{response}'")
    return MicrophoneResponse(response=response)

def microphone_server():
    rospy.init_node('microphone_service')
    rospy.Service('/microphone', Microphone, handle_microphone_request)
    rospy.loginfo("Microphone service is ready.")
    rospy.spin()

if __name__ == '__main__':
    microphone_server()
