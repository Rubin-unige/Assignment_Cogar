# sushi_bot/scripts/strategies/fastest_path.py
from .navigation_strategy import NavigationStrategy

class FastestPathStrategy(NavigationStrategy):
    def navigate(self, robot, destination):
        print(f"[{robot}] Navigating fast to {destination}")

