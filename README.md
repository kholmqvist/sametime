# Sametime 12

This script is intended to be used with Sametime 12 on Docker.

## How to use this Script
Usage: ./sametime.sh <OPTION>

Options:  
start	# Starts sametime 12 container  
stop	# Stops sametime 12 container  
restart	# Restarts sametime 12  


### Notes
Manage Docker as non-root user  
*sudo groupadd docker*  
*sudo usermod -aG docker $USER; newgrp docker*  

The script runs **sudo ./CleanUpMultiJibri.sh** during stop/restart, that's why it's asking for password
