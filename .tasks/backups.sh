#!/usr/bin/env bash

# Include config
source /home/pablo/.tasks/sites.sh

# Filenames
NOW=$(date +%Y-%m-%d-%H%M%S)
DATABASE_FILE="${NOW}-database.sql";
UPLOADS_FILE="${NOW}-uploads.tar.gz";

cd "$ROOT/html"
# Backup database
/usr/local/bin/wp db export "../backups/$DATABASE_FILE" --add-drop-table
# Compress database file
gzip -f "../backups/$DATABASE_FILE"
# Backup uploads directory
tar -zcf "../backups/$UPLOADS_FILE" wp-content/uploads
# Remove old backups
find ../backups -mtime +30 | xargs rm -fR