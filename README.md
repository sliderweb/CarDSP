# CarDSP
Car DSP system based on CamillaDSP and BlackHole for macOS and Apple computers. to use them as DSP for uou car audio projects... or not =)


# Get started
You need install virtual audio loopback BlackHole for capture audio from any source and route to Camilla DSP
https://existential.audio/blackhole/
https://github.com/HEnquist/camilladsp



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