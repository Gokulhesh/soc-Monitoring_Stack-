#!/bin/bash

BACKUP_DIR=~/project/backups
DATE=$(date +%F-%H-%M)

mkdir -p "$BACKUP_DIR"

docker run --rm \
  -v project_grafana_data:/data \
  -v "$BACKUP_DIR":/backup \
  alpine \
  tar czf /backup/grafana-$DATE.tar.gz /data

docker run --rm \
  -v project_prometheus_data:/data \
  -v "$BACKUP_DIR":/backup \
  alpine \
  tar czf /backup/prometheus-$DATE.tar.gz /data

echo "Backup completed at $DATE"
