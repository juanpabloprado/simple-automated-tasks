#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

cd "$ROOT/html"

find . -type d -exec chmod g+s {} \;

chmod g+w wp-content

chmod -R g+w wp-content/themes
chmod -R g+w wp-content/plugins