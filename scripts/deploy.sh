#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${NAMESPACE:-default}"
RELEASE="${RELEASE:-myapp}"

echo "Deploying ${RELEASE} to namespace ${NAMESPACE}..."

helm upgrade --install "${RELEASE}" ./helm-charts/myapp \
  --namespace "${NAMESPACE}" \
  --create-namespace

kubectl rollout status deployment/"${RELEASE}" -n "${NAMESPACE}"

echo "Deployment completed successfully."
