#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image, LaserScan, Range
from geometry_msgs.msg import Wrench
from std_srvs.srv import Trigger
import time

# Ensure your imports match your folder structure in `scripts/`
from commands.move_command import MoveCommand
from commands.pick_command import PickCommand
from commands.deliver_command import DeliverCommand
from command_invoker import CommandInvoker

from strategies.fastest_path import FastestPathStrategy
# from strategies.safe_path import SafePathStrategy  # Optional: comment out if not used

active_tables = {}  # Keeps track of busy tables
robot_id = ""       # Robot name
active_pub = None   # Shared publisher

# ------------------ Sensor Callbacks ------------------ #
def image_cb(msg): rospy.loginfo("[RGB] Image received")
def depth_cb(msg): rospy.loginfo("[Depth] Image received")
def lidar_cb(msg): rospy.loginfo("[LiDAR] Scan received")
def sonar_cb(msg): rospy.loginfo("[SONAR] Range received")
def force_cb(msg): rospy.loginfo("[Force] Sensor triggered")

# ------------------ Handle Active Table Updates ------------------ #
def active_tables_callback(msg):
    data = msg.data.split('|')
    if len(data) != 3:
        return
    r_id, table, status = data
    if status == "busy":
        active_tables[table] = r_id
    elif status == "done" and table in active_tables:
        del active_tables[table]

# ------------------ Handle Order Assignment ------------------ #
def handle_task(msg):
    global robot_id, active_pub

    data = msg.data.split('|')  # robot_id|dish|table
    if len(data) != 3:
        return

    assigned_robot, dish, table = data

    # Ignore if not for this robot
    if assigned_robot != robot_id:
        return

    # Wait if another robot is at the table
    while table in active_tables and active_tables[table] != robot_id:
        rospy.logwarn(f"[{robot_id}] Table {table} is busy. Waiting...")
        time.sleep(2)

    # Publish "busy" status for the table
    active_pub.publish(f"{robot_id}|{table}|busy")

    # Select navigation strategy (Strategy Pattern)
    strategy = FastestPathStrategy()

    # Execute using Command Pattern
    invoker = CommandInvoker()
    strategy.navigate(robot_id, "kitchen")
    invoker.add_command(PickCommand(robot_id, dish))
    strategy.navigate(robot_id, table)
    invoker.add_command(DeliverCommand(robot_id, table))
    invoker.execute_all()

    # Simulate arm motion
    try:
        rospy.wait_for_service('/arm_motion_service', timeout=3)
        motion = rospy.ServiceProxy('/arm_motion_service', Trigger)
        res = motion()
        rospy.loginfo(f"[{robot_id}] Arm motion: {res.success}")
    except:
        rospy.logwarn(f"[{robot_id}] Arm motion service not available.")

    rospy.sleep(1)
    active_pub.publish(f"{robot_id}|{table}|done")
    rospy.loginfo(f"[{robot_id}] Task finished.")

# ------------------ Main Robot Node ------------------ #
def robot_node():
    global robot_id, active_pub

    rospy.init_node('robot_node')
    robot_id = rospy.get_param("~robot_name", "robot_1")

    # Sensor subscriptions
    rospy.Subscriber("/camera/rgb/image_raw", Image, image_cb)
    rospy.Subscriber("/camera/depth/image_raw", Image, depth_cb)
    rospy.Subscriber("/scan", LaserScan, lidar_cb)
    rospy.Subscriber("/sonar", Range, sonar_cb)
    rospy.Subscriber("/force_sensor", Wrench, force_cb)

    # Task handling
    rospy.Subscriber("/orders", String, handle_task)

    # Active table coordination
    rospy.Subscriber("/active_tables", String, active_tables_callback)
    active_pub = rospy.Publisher("/active_tables", String, queue_size=10)

    rospy.loginfo(f"[{robot_id}] All systems ready.")
    rospy.spin()

if __name__ == '__main__':
    try:
        robot_node()
    except rospy.ROSInterruptException:
        pass

