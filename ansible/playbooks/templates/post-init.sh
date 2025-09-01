#!/bin/vbash
source /opt/vyatta/etc/functions/script-template
configure
load config.boot
commit
exit
