ToDo: Add more detail

Manage this using Homeshick

bin/update_authorized_keys.sh runs as a cron to keep .ssh/authorized_keys up-to-date

Add to crontab
"* 22 * * * $HOME/bin/update_authorized_keys.sh > /dev/null"
