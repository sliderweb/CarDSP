#!/bin/bash
sleep 10
date >>runme.txt
echo running camilladsp >>runme.txt
while TRUE
do
 ./bin/camilladsp ./conf/camilladsp.yml -p 1234 --logfile ./logs/camilladsp.log
done