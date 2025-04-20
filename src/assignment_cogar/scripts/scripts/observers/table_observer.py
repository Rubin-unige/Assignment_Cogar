# sushi_bot/scripts/observers/table_observer.py
class TableObserver:
    def notify(self, robot_id, table, status):
        """Override this method in concrete observers."""
        pass

