#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

for i in ${SITES[@]}
do
    cd "$ROOT/$i/html"
    php -q wp-cron.php >/dev/null 2>&1
done