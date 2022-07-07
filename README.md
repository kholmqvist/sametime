# Sametime 12

This script is intended to be used with Sametime 12 on Docker.

## How to use this Script
```
Usage: ./sametime.sh <OPTION>

Options:  
start	# Starts sametime 12 container  
stop	# Stops sametime 12 container  
restart	# Restarts sametime 12  
```

## Notes
### Manage Docker as non-root user  
```
sudo groupadd docker  
sudo usermod -aG docker $USER
newgrp docker  
```

### Run script on boot
Add this to your crontrab  
```
@reboot /PATH_TO/sametime.sh start
```

### Q/A
Q: Why is it asking for password during shutdown?  
A: The script runs **sudo ./CleanUpMultiJibri.sh** when using stop/restart. This is because multiple recorders are being used. see [here](https://help.hcltechsw.com/sametime/12/admin/configure_virtual_devices.html)
