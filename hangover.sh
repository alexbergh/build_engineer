#!/bin/bash

MY_LOGIN="your_login"
MY_EMAIL="your_email@example.com"

sessions=$(ps aux | grep "$MY_LOGIN" | grep -E 'sshd|bash' | grep -v grep | wc -l)

if [ "$sessions" -eq 0 ]; then
    echo "I'm not feeling well, I'll work from home" | mail -s "Stay home" $MY_EMAIL
fi

# 45 8 * * * /path/to/badun.sh >> crontab
