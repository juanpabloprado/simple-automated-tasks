#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

cd "$ROOT/html"
php -q wp-cron.php >/dev/null 2>&1