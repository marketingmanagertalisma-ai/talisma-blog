#!/bin/bash

echo "🔄 Starting backup..."

# Create backups folder if not exists
mkdir -p backups

# Get current date
DATE=$(date +%Y%m%d_%H%M%S)

# Backup all your collections
curl http://localhost:1337/api/case-studies > backups/case-studies_$DATE.json
curl http://localhost:1337/api/blogs > backups/blogs_$DATE.json

# Add more collections here as needed

echo "✅ Backup completed → saved in /backups folder"
