# Kafka Message

# The data stored in a Kafka topic is called a *message*.
# A message in Kafka follows a specific structure defined by Kafka itself.
# While we often just work with the value, it's useful to understand the full structure.

# Message Structure:

# 1. Topic     => The name of the topic the message belongs to.
# 2. Partition? => The partition number where the message is stored.
# 3. Header?    => Optional metadata (key-value pairs) added to the message.
# 4. Key?       => An identifier for the message. Not a unique key — duplicate keys are allowed.
#                The key is often used to determine the target partition.
# 5. Value     => The actual data payload of the message.

