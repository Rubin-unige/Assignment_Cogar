#!/usr/bin/env python3

import rospy
from assignment_cogar.msg import Order
import random
import time

def generate_order_id(index):
    return f"sushi_order_{index:03d}"

def generate_random_table():
    return random.randint(1, 10)

def generate_random_sushi():
    dishes = ["Nigiri", "Sashimi", "Maki", "Temaki", "Uramaki", "Ebi Roll"]
    return random.choice(dishes)

if __name__ == '__main__':
    rospy.init_node('sushi_order_publisher')
    pub = rospy.Publisher('/new_orders', Order, queue_size=10)

    rospy.loginfo("Sushi order generator started. Sending orders every 10 seconds...")

    start_time = time.time()
    order_count = 0

    try:
        while not rospy.is_shutdown() and (time.time() - start_time) < 120:
            order_msg = Order()
            order_msg.order_id = generate_order_id(order_count)
            order_msg.table_id = str(generate_random_table())
            order_msg.dish_name = generate_random_sushi()

            pub.publish(order_msg)
            rospy.loginfo(f"Published Order: {order_msg.order_id} | Table: {order_msg.table_id} | Dish: {order_msg.dish_name}")
            
            order_count += 1
            rospy.sleep(3)
    except rospy.ROSInterruptException:
        pass

    rospy.loginfo("Sushi order generator finished.")
