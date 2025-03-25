# devops-portfolio
devops-portfolio

clone the repo
aws login-cli
terraform apply
aws eks --region <region_Name> update-kubeconfig --name <cluster_name>
kubectl get nodes

📌 Step 2: Deploy ArgoCD
1️⃣ Install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
2️⃣ Expose ArgoCD with Port Forwarding
kubectl port-forward svc/argocd-server -n argocd 8080:443
Access ArgoCD UI at https://localhost:8080
Get the initial ArgoCD password:
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d

📌 Step 3: Deploy a Sample Application using Helm
1️⃣ Create Helm Chart
mkdir -p devops-portfolio/helm-charts/myapp/templates
cd devops-portfolio/helm-charts/myapp

🔹 Chart.yaml - Helm Chart Config
apiVersion: v2
name: myapp
description: A simple application deployed using Helm
version: 0.1.0

🔹 values.yaml - Helm Values
replicaCount: 2

image:
  repository: nginx
  tag: latest
  pullPolicy: IfNotPresent

service:
  type: LoadBalancer
  port: 80
  
🔹 templates/deployment.yaml - Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: {{ .Values.replicaCount }}
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
        - name: myapp
          image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
          ports:
            - containerPort: 80
            
🔹 templates/service.yaml - Service
apiVersion: v1
kind: Service
metadata:
  name: myapp
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: 80
  selector:
    app: myapp
    
2️⃣ Install Helm Chart
helm install myapp ./helm-charts/myapp -n argocd

📌 Step 4: Automate Deployment with ArgoCD
1️⃣ Create an ArgoCD Application
🔹 argocd/application.yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: myapp
  namespace: argocd
spec:
  destination:
    namespace: default
    server: https://kubernetes.default.svc
  source:
    repoURL: https://github.com/yourusername/devops-portfolio.git
    path: helm-charts/myapp
    targetRevision: HEAD
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
      
2️⃣ Apply ArgoCD Manifest
kubectl apply -f argocd/application.yaml -n argocd

ArgoCD will automatically sync the Helm chart and deploy the application.

📌 Step 5: Set Up CI/CD with GitHub Actions
1️⃣ Create .github/workflows/docker-build.yml
name: Build and Push Docker Image

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Login to Docker Hub
        run: echo "${{ secrets.DOCKER_PASSWORD }}" | docker login -u "${{ secrets.DOCKER_USERNAME }}" --password-stdin

      - name: Build and push image
        run: |
          docker build -t your-dockerhub-username/myapp:latest .
          docker push your-dockerhub-username/myapp:latest
This automatically builds and pushes the Docker image when you push code to GitHub.
