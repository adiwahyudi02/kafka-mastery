# Kafka Consumer

# A Kafka Consumer is a client application that receives/reads messages from Kafka topics.
# It acts as the subscriber in a publish-subscribe system.

# Reading messages from a topic is always sequential, starting from the earliest to the latest offset.
# This is the opposite of how a producer sends data — always appending to the end.

# Kafka provides a console consumer, a simple command-line tool for consumer.
# ./bin/kafka-console-consumer.sh


# Reading a Message

# from-beginning option will read the messages from the beginning
# without this option, it will read the messages only starting from the new messages when the consumer starts
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic hello --from-beginning

