#!/usr/bin/env bash
# Kenneth Holmqvist
# kholmqvist88@gmail.com
#

sametime_dir="/opt/sametime" # PATH to sametime folder
compose_file="$sametime_dir/docker-compose.yml"
compose="/usr/local/bin/docker-compose" #PATH to docker-compose binary

# Check if docker-compose is installed
if [ ! -e "$compose" ]; then
  echo "docker-compose not found in /usr/local/bin/"
  exit
fi

# Start Sametime containers
function start() {
  $compose -f "$compose_file" up -d --scale jibri=5
}

# Stop Sametime containers
function stop() {
  $compose -f "$compose_file" down
  sudo "$sametime_dir"/CleanUpMultiJibri.sh
}

function restart() {
  stop  # call stop function
  start # call start function
}

# If script is called without any parameter, then show this
if [ $# -eq 0 ]; then
  echo "Usage: $0 <OPTION>"
  echo ""
  echo "Options:"
  echo "start	# Starts sametime 12 container"
  echo "stop	# Stops sametime 12 container"
  echo "restart	# Restarts sametime 12"
  echo ""
fi

# Run script with first parameter
if [ $# -ne 0 ]; then
  $1
fi
