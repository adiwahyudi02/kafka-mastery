# Kafka Routing

# When sending data to a Kafka topic, how does Kafka decide which partition to use?
# For example, why do messages often go to the same partition? That’s because of how Kafka handles partition routing.

# By default, when using the console producer, the message key is null.
# If the key is null, Kafka will send all messages to the same partition (usually partition 0).

# In Kafka, the message key is NOT like a primary key in a database.
# The key is mainly used to determine the target partition.

# Kafka uses the following formula to determine the partition:
# partition = hash(key) % total_partitions

# Example:
# - Key: "adi"
# - Total partitions: 2
# - If hash("adi") = 8, then:
#   8 % 2 = 0 → the message will go to partition 0
# This means the same key will always be routed to the same partition.

# To send messages with keys using the console producer:
./bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic hello --property parse.key=true --property key.separator=:

# Example input:
# > 1:Olla
# > 2:Assalammualaikum
# > 1:Sampurasun
# > 2:Haulankap
# > haulankap:Haulankap
# > rampes:Rampes

# IMPORTANT: The numbers (e.g., 1 or 2) are keys — not partition numbers.
# Kafka uses its internal hashing logic to decide the partition based on the key.

# Console Consumer: To show the key with each message, use:
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello --group greetings --property print.key=true
