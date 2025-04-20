# sushi_bot/scripts/commands/deliver_command.py
from .command_base import Command

class DeliverCommand(Command):
    def __init__(self, robot, table):
        self.robot = robot
        self.table = table

    def execute(self):
        print(f"[{self.robot}] Delivering to {self.table}")

