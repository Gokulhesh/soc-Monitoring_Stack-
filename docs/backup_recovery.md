# Backup and Recovery Guide

## Backup

Backups are created using the script:

    ./scripts/backup.sh

This script creates compressed archives of:
- Grafana data
- Prometheus data

Backups are stored in:

    ~/project/backups/

Each backup file is timestamped.

---

## Recovery

To restore Grafana:

1. Stop containers:
   docker compose down

2. Extract backup:
   tar xzf grafana-<date>.tar.gz

3. Restart:
   docker compose up -d

---

## Notes

- Backup uses Docker volumes
- Data is preserved across container restarts
- Regular backups are recommended
