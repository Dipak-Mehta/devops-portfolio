# Kubernetes

Kubernetes deployment and operations examples.

## Topics

- Deployments and ReplicaSets
- Services and headless Services
- ConfigMaps and Secrets
- Namespaces
- Ingress
- Resource requests and limits
- Probes
- RBAC
- Autoscaling
- Troubleshooting

## Useful commands

```bash
kubectl get nodes
kubectl get pods -A
kubectl get svc -A
kubectl describe pod <pod>
kubectl logs <pod>
kubectl get events -A --sort-by=.lastTimestamp
```
