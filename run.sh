#!/bin/bash
sleep 10
date >>logs/camilladsp.log
echo running camilladsp >>logs/camilladsp.log
while TRUE
do
 ./bin/camilladsp ./conf/camilladsp.yml -p 1234 --logfile ./logs/camilladsp.log
done