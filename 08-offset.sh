# Kafka Offset

# Messages in a Kafka topic are stored in order, starting from offset 0 and increasing sequentially.
# Now, what happens if all consumers stop while the producer continues sending messages?
# When the consumer starts again, where will it read from — the beginning, the latest, or where it left off?

# By default:
# - If the consumer runs for the first time (with no saved offset), it will read only new incoming data.
# - If you use --from-beginning, the consumer will read all existing messages from the start.
# - If the consumer had already read up to a certain point (e.g., offset 5) and was stopped,
#   it will resume from where it left off (offset 6) when restarted — **not** from the beginning or the newest message.

# Kafka keeps track of the last read position using a value called the *offset*.
# This offset is stored together with the consumer group information.
# That means:
# - If you use the same consumer group, Kafka remembers the last offset.
# - If you use a different consumer group, it will start fresh (no offset history).

# So, offset is how Kafka ensures a consumer can continue processing without losing or duplicating data.


# To check the latest offset for a Consumer Group, you can use the kafka-consumer-groups.sh.
./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --all-groups --all-topics --describe

