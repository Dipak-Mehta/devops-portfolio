# Monitoring & Observability

Observability examples using metrics, logs and dashboards.

## Stack

- Prometheus — metrics
- Grafana — dashboards and alerting
- Loki — logs
- cAdvisor — container metrics
- Node Exporter — host metrics

## Observability model

```text
Application ──► Metrics ──► Prometheus ──► Grafana
     │
     └────────► Logs ─────► Loki ─────────► Grafana
```

## Key signals

- CPU / memory
- Disk usage
- Network traffic
- Container health
- HTTP latency
- Error rate
- Availability
