# DevOps Platform Architecture

## End-to-end flow

```text
GitHub
  │
  ├── Pull Request
  │      └── CI checks
  │
  └── Merge to main
          │
          ▼
    GitHub Actions
          │
          ├── Test
          ├── Security scan
          └── Build image
                    │
                    ▼
              Container Registry
                    │
                    ▼
                 Argo CD
                    │
                    ▼
               Kubernetes
                    │
          ┌─────────┴─────────┐
          ▼                   ▼
     Application          Monitoring
                              │
                    Prometheus / Grafana / Loki
```

## Infrastructure layer

Terraform provisions cloud resources and keeps infrastructure changes version controlled.

## Application layer

Docker packages workloads, Helm standardizes Kubernetes deployments, and Argo CD provides GitOps-based synchronization.

## Operations layer

Prometheus, Grafana and Loki provide metrics, dashboards, logs and operational visibility.
