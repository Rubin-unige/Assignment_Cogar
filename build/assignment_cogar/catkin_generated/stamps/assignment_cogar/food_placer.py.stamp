#!/usr/bin/env python3
import rospy
import random
from assignment_cogar.srv import FoodPlacer, FoodPlacerResponse
from assignments.srv import CheckJointState, CheckJointStateRequest
from geometry_msgs.msg import Pose
from abc import ABC, abstractmethod

class PosePlacementStrategy(ABC):
    @abstractmethod
    def generate_pose(self, status, has_empty_plate):
        pass

class EmptyTableStrategy(PosePlacementStrategy):
    def generate_pose(self, status, has_empty_plate):
        pose = Pose()
        pose.position.x = 0.0
        pose.position.y = 0.0
        pose.position.z = 0.0
        return [pose]

class OccupiedTableStrategy(PosePlacementStrategy):
    def generate_pose(self, status, has_empty_plate):
        poses = []
        for _ in range(4):
            pose = Pose()
            pose.position.x = random.uniform(-0.4, 0.4)
            pose.position.y = random.uniform(-0.4, 0.4)
            pose.position.z = 0.0
            poses.append(pose)
        return poses

class ClutteredTableStrategy(PosePlacementStrategy):
    def generate_pose(self, status, has_empty_plate):
        poses = []
        for _ in range(2):
            pose = Pose()
            pose.position.x = random.uniform(-0.2, 0.2)
            pose.position.y = random.uniform(-0.2, 0.2)
            pose.position.z = 0.0
            poses.append(pose)
        return poses

class FoodPlacerHandler:
    def __init__(self, robot_id):
        self.robot_id = robot_id
        rospy.init_node(f"{robot_id}_food_placer_node", anonymous=True)

        self.strategy_map = {
            "EMPTY": EmptyTableStrategy(),
            "PARTIALLY_OCCUPIED": OccupiedTableStrategy(),
            "CLUTTERED": ClutteredTableStrategy(),
        }

        rospy.wait_for_service('/check_joint_state')
        self.arm_service = rospy.ServiceProxy('/check_joint_state', CheckJointState)

        service_name = f'/{self.robot_id}/food_placer_service'
        self.service = rospy.Service(service_name, FoodPlacer, self.handle_request)

        rospy.loginfo(f"[{self.robot_id}] FoodPlacer service ready at {service_name}")

    def handle_request(self, req):
        try:
            # Attempt food placement
            success = self.attempt_food_placement(req.status, max_retries=3)

            if success:
                if req.has_empty_plate:
                    rospy.loginfo(f"[{self.robot_id}] Removing empty plate...")
                    rospy.sleep(1.0)
                return FoodPlacerResponse(True, "Food placed successfully")
            else:
                return FoodPlacerResponse(False, "Failed to place food after retries")

        except Exception as e:
            return FoodPlacerResponse(False, str(e))

    def attempt_food_placement(self, table_status, max_retries):
        for attempt in range(max_retries):
            rospy.loginfo(f"[{self.robot_id}] Attempt {attempt + 1}/{max_retries}")

            strategy = self.strategy_map.get(table_status)
            if not strategy:
                rospy.logwarn(f"[{self.robot_id}] Unknown table status: {table_status}")
                return False

            poses = strategy.generate_pose(table_status, False)

            for pose in poses:
                rospy.loginfo(f"[{self.robot_id}] Trying pose: x={pose.position.x:.2f}, y={pose.position.y:.2f}")
                if self.is_pose_reachable(pose):
                    rospy.loginfo(f"[{self.robot_id}] Pose reachable! Placing food...")
                    rospy.sleep(2.0)
                    return True
                rospy.logwarn(f"[{self.robot_id}] Pose unreachable")

            rospy.logwarn(f"[{self.robot_id}] No reachable poses this attempt")
        return False

    def is_pose_reachable(self, pose):
        try:
            req = CheckJointStateRequest()
            req.positions = [random.uniform(-1.5, 1.5) for _ in range(7)]
            req.velocities = [0.0] * 7
            req.efforts = [0.0] * 7
            result = self.arm_service(req)
            return result.success
        except rospy.ServiceException as e:
            rospy.logerr(f"[{self.robot_id}] Arm service failed: {e}")
            return False

if __name__ == "__main__":
    try:
        import sys
        if len(sys.argv) < 2:
            print("Usage: food_placer_node.py <robot_id>")
            sys.exit(1)

        robot_id = sys.argv[1]
        placer = FoodPlacerHandler(robot_id)
        rospy.spin()

    except rospy.ROSInterruptException:
        pass
