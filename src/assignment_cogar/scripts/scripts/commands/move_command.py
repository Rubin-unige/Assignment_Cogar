# sushi_bot/scripts/commands/move_command.py
from .command_base import Command

class MoveCommand(Command):
    def __init__(self, robot, location):
        self.robot = robot
        self.location = location

    def execute(self):
        print(f"[{self.robot}] Moving to {self.location}")

