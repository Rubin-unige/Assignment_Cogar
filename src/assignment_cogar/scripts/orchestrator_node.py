#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import random

robots = ["robot_1", "robot_2", "robot_3", "robot_4", "robot_5"]
orders = ["Sushi A", "Sushi B", "Sushi C"]
tables = ["Table 1", "Table 2", "Table 3"]

def orchestrator():
    rospy.init_node('orchestrator_node')
    pub = rospy.Publisher('/orders', String, queue_size=10)
    rate = rospy.Rate(0.5)  # 1 task every 2 seconds

    while not rospy.is_shutdown():
        robot = random.choice(robots)
        dish = random.choice(orders)
        table = random.choice(tables)
        msg = f"{robot}|{dish}|{table}"
        rospy.loginfo(f"[Orchestrator] Assigned: {msg}")
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        orchestrator()
    except rospy.ROSInterruptException:
        pass

