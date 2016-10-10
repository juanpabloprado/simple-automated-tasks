#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

for i in ${SITES[@]}
do
    cd "$ROOT/$i/html"

    find . -type d -exec chmod g+s {} \;

    chmod g+w wp-content

    chmod -R g+w wp-content/themes
    chmod -R g+w wp-content/plugins
done