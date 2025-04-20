#!/usr/bin/env python
import rospy
from geometry_msgs.msg import WrenchStamped
from std_srvs.srv import Trigger

class ForceSensorObserver:
    def __init__(self, threshold=1.0):
        self.threshold = threshold
        self.plate_present = False

    def notify(self, force_z):
        self.plate_present = force_z > self.threshold
        rospy.loginfo(f"[TableClear] Force Z: {force_z:.2f} N | Plate present: {self.plate_present}")

        if self.plate_present:
            self.return_plates_to_station()
        else:
            rospy.loginfo("[TableClear] No plate detected. Nothing to clear.")

    def return_plates_to_station(self):
        rospy.wait_for_service('/arm_motion_service')
        try:
            motion = rospy.ServiceProxy('/arm_motion_service', Trigger)
            response = motion()
            if response.success:
                rospy.loginfo("[TableClear] Plates returned successfully.")
            else:
                rospy.logwarn("[TableClear] Failed to return plates.")
        except rospy.ServiceException as e:
            rospy.logerr(f"[TableClear] Failed to call arm_motion_service: {e}")

def force_sensor_callback(msg):
    force_z = msg.wrench.force.z
    observer.notify(force_z)

def table_clearing_node():
    rospy.init_node('table_clearing_node')
    rospy.Subscriber('/wrist_right_ft', WrenchStamped, force_sensor_callback)

    rospy.loginfo("[TableClear] Table clearing node (observer-based) is running.")
    rospy.spin()

if __name__ == '__main__':
    try:
        observer = ForceSensorObserver()
        table_clearing_node()
    except rospy.ROSInterruptException:
        pass

