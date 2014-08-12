#!/bin/bash
sleep 5
kill $(ps aux | grep '[s]upervisord' | awk '{print $2}')
sleep 5
/app/init app:rake gitlab:setup force=yes
sleep 5
kill $(ps aux | grep '[s]upervisord' | awk '{print $2}')
sleep 5
/app/init app:start

