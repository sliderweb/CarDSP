# CarDSP
Car DSP system based on CamillaDSP and BlackHole 


# Get started
You need install two tools
## Intstall Blackhole
## Install...

# Autostart CamillsDsp
Copy plist file from *conf* directory to /Library/LaunchAgents/

```
sudo cp conf/local.cardsp.plist /Library/LaunchAgents/
# and register that
sudo launchctl load -w /Library/LaunchAgents/local.cardsp.plist
```

Important!
Work directory and logs in local.cardsp.plist have path /Applications/CarDSP.
You need clone this project in /Applications, or edit local.cardsp.plist to your actual working directory.

## Reload config
```
kill -HUP $(ps -ax | grep camilladsp | grep yml | awk '{print $1}')
```
or if you use lauchd
```
sudo launchctl unload /Library/LaunchAgents/local.cardsp.plist
sudo launchctl load -w /Library/LaunchAgents/local.cardsp.plist
```
or logout and login
or reboot the system...