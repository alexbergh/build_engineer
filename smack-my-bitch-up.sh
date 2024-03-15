#!/bin/bash

MY_LOGIN="your_login"
MY_EMAIL="your_email@example.com"

REPLY_LIST=("1"
             "2"
             "3")

SSH_SESSIONS=$(ps aux | grep "$MY_LOGIN" | grep sshd | grep -v grep)

if [ ! -z "$SSH_SESSIONS" ]; then
    RANDOM_REPLY=${REPLY_LIST[$RANDOM % ${#REPLY_LIST[@]}]}

    echo "Stay work $RANDOM_REPLY" | mail -s "Stay work" $MY_EMAIL
fi