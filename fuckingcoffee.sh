#!/bin/bash

# Script name: fuckingcoffee.sh

# Wait for 17 seconds
sleep 17

# Open SSH session and send commands to the coffee machine
# Replace `user` with your username and `coffee_machine_ip` with the coffee machine's IP address
ssh user@coffee_machine_ip << 'EOF'
echo -ne '\x62\x72\x65\x77\x5f\x6c\x61\x74\x74\x65\x00' > /dev/coffee_machine_device
EOF

# Wait for 24 seconds to allow the coffee to brew and pour into the cup
sleep 24
