#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

cd "$ROOT/html"
# Files
find . -type f -exec chmod 644 {} +
# Directories
find . -type d -exec chmod 755 {} +
# wp-config.php
chmod 600 wp-config.php