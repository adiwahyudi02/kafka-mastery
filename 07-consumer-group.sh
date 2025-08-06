# Kafka Consumer Group

# When a consumer reads data from a topic, it must specify a Consumer Group.
# If no group is specified, Kafka will automatically create a new one.
# In real applications, a Consumer Group is usually defined explicitly — often using the application's name.

# Kafka ensures that each message is delivered only once per Consumer Group.
# If multiple consumers share the same group, Kafka treats them as a single unit and distributes the messages among them.
# If each consumer uses a different group, they will all receive the same messages (duplicate delivery).


# To read using a specific Consumer Group with the console consumer:

# cases

# consumer 1
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello --group greetings --from-beginning

# consumer 2
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello --group greetings --from-beginning

# Both consumers are part of the same Consumer Group: 'greetings'.
# When a producer sends a message to the 'hello' topic,
# Kafka will deliver each message to only one of the consumers in the same group (not both).
# This allows for load balancing — messages are shared among consumers in the same group.


# If you’re wondering why only one consumer receives the messages and they don’t take turns (to another consumer),
# that's because message distribution is handled through a mechanism called partitioning.


# What happens if one consumer is turned off?
# If a consumer is removed from the Consumer Group, Kafka will automatically rebalance
# and reassign the partitions to the remaining consumers in the group.


