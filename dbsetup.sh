#!/bin/bash
kill $(ps aux | grep '[s]upervisord' | awk '{print $2}')
/app/init app:rake gitlab:setup force=yes
kill $(ps aux | grep '[s]upervisord' | awk '{print $2}')
/app/init app:start

