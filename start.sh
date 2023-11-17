#!/bin/bash

# Change to the directory where the project lives
cd /app/

# Run the mvn jetty:start command, keep running in the background
# aws requires some specific syntax to invoke long running commands
mvn jetty:run> /dev/null 2> /dev/null < /dev/null &
