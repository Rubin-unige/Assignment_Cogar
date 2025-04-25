#!/usr/bin/env python3
import rospy
import numpy as np
from sensor_msgs.msg import Image
from assignment_cogar.msg import TableStatus
from assignment_cogar.srv import TriggerAnalysis, TriggerAnalysisResponse
import random

class VisualPerceptionNode:
    def __init__(self):
        rospy.init_node('visual_perception_node')

        # Service for on-demand analysis
        self.analysis_service = rospy.Service('/trigger_visual_analysis', 
                                            TriggerAnalysis, 
                                            self.handle_analysis_request)

        # Subscribers to RGB and Depth images
        self.received_rgb = False
        self.received_depth = False
        rospy.Subscriber('/xtion/rgb/image_raw', Image, self.rgb_callback)
        rospy.Subscriber('/xtion/depth/image_raw', Image, self.depth_callback)

        self.status_options = ["EMPTY", "PARTIALLY_OCCUPIED", "CLUTTERED"]
        rospy.loginfo("Visual Perception Node initialized (service-based)")

    def rgb_callback(self, data):
        self.received_rgb = True
        rospy.loginfo_once("RGB images received.")

    def depth_callback(self, data):
        self.received_depth = True
        rospy.loginfo_once("Depth images received.")

    def handle_analysis_request(self, req):
        """Service handler that performs one analysis cycle"""
        response = TriggerAnalysisResponse()
    
        # Perform the analysis
        table_status = TableStatus()
        table_status.status = np.random.choice(self.status_options, p=[0.3, 0.5, 0.2])
        table_status.has_empty_plate = np.random.rand() < 0.3 if table_status.status != "EMPTY" else False
        table_status.timestamp = rospy.Time.now()

        # Publish to robot-specific topic
        status_topic = f'/table_status/{req.robot_id}'
        pub = rospy.Publisher(status_topic, TableStatus, queue_size=1, latch=True)
        pub.publish(table_status)

        response.success = True
        return response

if __name__ == '__main__':
    try:
        VisualPerceptionNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass