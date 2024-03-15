#!/bin/bash

emails=$(grep -r "Name" /path/to/mails | grep -E "sorry|help")

ssh remoteuser@remotehost "pg_restore -U dbusername -d dbname /path/to/backup.tar"

for email in $emails; do
    recipient=$(echo $email | awk '{print $1}') 
    echo "No question, be more careful next time" | mutt -s "Reply to email" -- $recipient
done

# */30 * * * * /path/to/your/script.sh >> cron