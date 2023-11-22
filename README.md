# CarDSP
Car DSP system based on CamillaDSP and BlackHole 

## 
Reload config
```
kill -HUP $(ps -ax | grep camilladsp | grep yml | awk '{print $1}')
```