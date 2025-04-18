# sushi_bot/scripts/observers/cleanup_observer.py
from .table_observer import TableObserver

class CleanupObserver(TableObserver):
    def notify(self, robot_id, table, status):
        if status == "done":
            print(f"[Cleanup] Table {table} is free. Cleaning triggered.")

