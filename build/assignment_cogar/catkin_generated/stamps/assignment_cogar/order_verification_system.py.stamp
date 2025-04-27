#!/usr/bin/env python3

import rospy
from assignments.srv import Speaker, SpeakerRequest
from assignment_cogar.srv import Microphone, VerifyOrder
from assignment_cogar.srv import VerifyOrderResponse
from std_msgs.msg import String
from assignment_cogar.msg import OrderStatus

class ListenToCustomer:
    def __init__(self):
        rospy.wait_for_service('/microphone')
        self.microphone_srv = rospy.ServiceProxy('/microphone', Microphone)

    def get_response(self, timeout=5):
        try:
            rospy.wait_for_service('/microphone', timeout=timeout)
            response = self.microphone_srv().response
            return response
        except rospy.ServiceException as e:
            rospy.logwarn(f"Microphone service failed: {e}")
            return ""

class AnnounceOrder:
    def __init__(self):
        rospy.wait_for_service('/speaker')
        self.speaker_srv = rospy.ServiceProxy('/speaker', Speaker)

    def announce(self, dish_name):
        try:
            req = SpeakerRequest(message=f"Your order: {dish_name}. Is this correct?")
            return self.speaker_srv(req).success
        except rospy.ServiceException:
            return False

class DecisionHandler:
    def __init__(self):
        self.retry_count = 0
        self.max_retries = 3
        self.status_pub = rospy.Publisher('/order_status', OrderStatus, queue_size=1, latch=True)

    def _publish_status(self, robot_id, dish_name, status, requires_staff=False):
        msg = OrderStatus()
        msg.robot_id = robot_id
        msg.dish_name = dish_name
        msg.status = status
        msg.requires_staff_attention = requires_staff
        self.status_pub.publish(msg)

    def handle_response(self, dish_name, response, robot_id):
        # If response is empty or "no", reject the order immediately
        if not response or response.lower() == "no":
            self._publish_status(robot_id, dish_name, "rejected", requires_staff=True)
            return "failure"

        # If response is "yes", accept the order
        if any(word in response.lower() for word in ["yes", "correct", "right"]):
            self._publish_status(robot_id, dish_name, "verified", requires_staff=False)
            return "success"

class OrderVerificationSystem:
    def __init__(self):
        # Initialize components first
        try:
            self.announcer = AnnounceOrder()
            self.listener = ListenToCustomer()
            self.decision_maker = DecisionHandler()
            
            # Then create the service
            self.verify_service = rospy.Service(
                '/order_verification',
                VerifyOrder,
                self.handle_verification_request
            )
            rospy.loginfo("Order Verification System is ready!")
            
        except Exception as e:
            rospy.logerr(f"Failed to initialize OrderVerificationSystem: {str(e)}")
            raise

    def handle_verification_request(self, req):
        # Retrieve the robot_id and dish_name from the service request
        robot_id = req.robot_id
        dish_name = req.dish_name
        rospy.loginfo(f"Verifying order: {dish_name} for robot {robot_id}")
        
        # Publish initial verification status
        self.decision_maker._publish_status(robot_id, dish_name, "verifying")

        # Retry loop to announce and get a response from the customer
        while True:
            if not self.announcer.announce(dish_name):
                rospy.logwarn("Announcement failed, retrying...")
                rospy.sleep(1)
                continue

            response = self.listener.get_response()

            # If the microphone fails, or the response is "", treat it as rejection
            if not response:
                rospy.logwarn(f"Microphone failed to respond, rejecting order...")
                self.decision_maker._publish_status(robot_id, dish_name, "rejected", requires_staff=True)
                return VerifyOrderResponse(False)

            result = self.decision_maker.handle_response(dish_name, response, robot_id)

            # If the response indicates failure (rejected), return failure
            if result == "failure":
                return VerifyOrderResponse(False)

            # If the response indicates success (verified), return success
            return VerifyOrderResponse(result == "success")

if __name__ == '__main__':
    rospy.init_node('order_verification_system')
    try:
        ovs = OrderVerificationSystem()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Shutting down order verification system")
