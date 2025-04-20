# sushi_bot/scripts/command_invoker.py
class CommandInvoker:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(CommandInvoker, cls).__new__(cls)
            cls._instance.queue = []
        return cls._instance

    def add_command(self, command):
        self.queue.append(command)

    def execute_all(self):
        for command in self.queue:
            command.execute()
        self.queue.clear()

