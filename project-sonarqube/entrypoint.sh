#!/bin/bash
set -e

# Adds the vm.max_map_count setting to sysctl.conf for persistence
# Uses sudo if necessary
# echo "vm.max_map_count=262144" >> /etc/sysctl.conf

# Applies sysctl settings
# sysctl -p

# Default command to start SonarQube
DEFAULT_CMD=('/opt/java/openjdk/bin/java' '-jar' 'lib/sonarqube.jar')

# This if statement checks if the first argument is a flag
if [ "$#" -eq 0 ] || [ "${1#-}" != "$1" ]; then
    set -- "${DEFAULT_CMD[@]}" "$@"
fi

# Executes the command with the provided parameters
exec "$@"