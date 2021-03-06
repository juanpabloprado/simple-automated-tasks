#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

# Pushbullet token
TOKEN=''

# Store sites with errors
ERRORS=""

cd "$ROOT/html"
# Verify checksums
if ! /usr/local/bin/wp core verify-checksums; then
	ERRORS="$ERRORS $i"
fi

if [ -n "$ERRORS" ]; then
	curl -u $TOKEN: https://api.pushbullet.com/v2/pushes -d type=note -d title="Server" -d body="Checksums verification failed for the following sites:$ERRORS"
fi