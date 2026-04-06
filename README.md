# Containerized Monitoring Stack

## Overview
A full monitoring stack built with Docker, Prometheus, Grafana, 
Alertmanager, and Nginx with HTTPS.

## Stack
- **Prometheus** — metrics collection
- **Grafana** — visualization dashboards
- **Alertmanager** — threshold-based alerting
- **Node Exporter** — host-level telemetry
- **Nginx** — reverse proxy with HTTPS (self-signed certificates)

## Project Structure
- `docker/` — Docker Compose configuration
- `config/` — Prometheus and Alertmanager config files
- `nginx/` — Nginx reverse proxy setup
- `k8s/base/` — Kubernetes base manifests
- `scripts/` — automation scripts
- `backups/` — backup and recovery system
- `docs/` — architecture diagrams

## Setup
```bash
git clone https://gitlab.com/Gokulhesh/soc-splunk-lab.git
cd soc-splunk-lab/docker
docker-compose up -d
```

## Author
Gokulhesh Kanna — UFV Cybersecurity Student