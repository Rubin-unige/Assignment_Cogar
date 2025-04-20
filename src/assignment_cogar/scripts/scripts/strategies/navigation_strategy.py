# sushi_bot/scripts/strategies/navigation_strategy.py
from abc import ABC, abstractmethod

class NavigationStrategy(ABC):
    @abstractmethod
    def navigate(self, robot, destination):
        pass

