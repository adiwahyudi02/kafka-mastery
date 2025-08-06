# Kafka Producer

# A Kafka Producer is a client application that sends messages to Kafka topics.
# It acts as the publisher in a publish-subscribe system.

# Kafka provides a console producer, a simple command-line tool for producer.
# ./bin/kafka-console-producer.sh

# Sending a Message
./bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic hello

# After you run the command, You can send the messages
# > hello world
# > hi world
# > hi again world