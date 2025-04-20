# sushi_bot/scripts/strategies/safe_path.py
from .navigation_strategy import NavigationStrategy

class SafePathStrategy(NavigationStrategy):
    def navigate(self, robot, destination):
        print(f"[{robot}] Taking safe route to {destination")

