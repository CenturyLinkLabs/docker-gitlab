#!/bin/bash
pkill supervisord
/app/init app:rake gitlab:setup force=yes
pkill supervisord
/app/init app:start
