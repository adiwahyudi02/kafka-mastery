# Kafka Partition

# When we create a Kafka topic, it is divided into partitions.
# By default, a new topic has only 1 partition.

# A partition is the unit of parallelism in Kafka:
# - One partition can be consumed by only one consumer in a consumer group.
# - One consumer can consume data from multiple partitions.

# This explains why, when we run multiple consumers with the same group,
# messages are only received by one of them — unless there are multiple partitions.

# For example:
# - If we have 3 partitions and 3 consumers in the same group,
#   Kafka will evenly distribute messages across the 3 consumers (1 partition per consumer).
# - If we add 2 more consumers (total 5), they won’t receive any messages,
#   because only 3 partitions are available to assign.

# Offset is stored per partition — each partition tracks its own offset for each consumer group.

# To create a topic with multiple partitions:
./bin/kafka-topics.sh --bootstrap-server <host>:<port> --create --topic <topic-name> --partitions <num>

# To increase the number of partitions on an existing topic:
./bin/kafka-topics.sh --bootstrap-server <host>:<port> --alter --topic <topic-name> --partitions <num>

# To describe a topic and see its partition details:
./bin/kafka-topics.sh --bootstrap-server <host>:<port> --describe --topic <topic-name>



# Example: Change 'hello' topic to have 2 partitions
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --alter --topic hello --partitions 2

# Then verify the topic details (should show 2 partitions)
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic hello

# If you only see partition 0 in the output of:
./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --all-groups --all-topics --describe

# That means no message has been sent to partition 1 yet.

# To send data to a specific partition (e.g., partition 1), you need to understand Kafka partition routing logic.
