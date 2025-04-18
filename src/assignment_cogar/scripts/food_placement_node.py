#!/usr/bin/env python
import rospy
import random

def food_placement():
    rospy.init_node('food_placement_node')
    rate = rospy.Rate(0.2)
    while not rospy.is_shutdown():
        spot_found = random.choice([True, False])
        if spot_found:
            rospy.loginfo("[Placement] Found a free spot on the table.")
        else:
            rospy.logwarn("[Placement] No space! Rechecking...")
        rate.sleep()

if __name__ == '__main__':
    try:
        food_placement()
    except rospy.ROSInterruptException:
        pass

