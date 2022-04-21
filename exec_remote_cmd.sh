#/bin/bash

expect -c "
spawn sshpass -p $2 ssh $1
expect >
send \"enable\r\"
expect #
send \"show\r\"
expect #
send \"wan WAN1\r\"
expect #
"
