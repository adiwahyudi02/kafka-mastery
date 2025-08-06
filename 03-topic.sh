# Kafka Topics

# A topic in Kafka is like a table in a relational database.
# It stores data in an append-only log, meaning new data is always added to the end.


# We can use ./bin/kafka-topics.sh to manage the topics

# Create topics
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic hello
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic hi


# List the topics
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list


# Delete a topic
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic hi
