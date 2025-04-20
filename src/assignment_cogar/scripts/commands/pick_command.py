# sushi_bot/scripts/commands/pick_command.py
from .command_base import Command

class PickCommand(Command):
    def __init__(self, robot, dish):
        self.robot = robot
        self.dish = dish

    def execute(self):
        print(f"[{self.robot}] Picking up {self.dish}")

