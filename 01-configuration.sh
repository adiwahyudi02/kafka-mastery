# Kafka provides a configuration file to configure the kafka application
# The configuration file is stored in the /config/kraft/server.properties file 


# By default kafka store the data in the /tmp/kraft-combined-logs directory
# This means that the data ussually will be lost if the operating system reboots
# We can change the location of the data by changing the log.dirs property inside the /config/kraft/server.properties file

# Create the data directory inside the kafka distribution folder
mkdir data

# Change the log.dirs property to point to the data directory
log.dirs=data


# We need to run the kafka-storage.sh script to format the data directory
# This will create the uuid
./bin/kafka-storage.sh random-uuid
# Format
./bin/kafka-storage.sh format --cluster-id 8OVMrIOvQr-UymCcJ7_cOg --config config/kraft/server.properties


# NOTE: We only need to setup this once