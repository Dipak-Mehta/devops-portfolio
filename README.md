# DevOps Engineer Portfolio — Dipak Mehta

<p align="center">
  <b>Cloud & DevOps Engineer</b><br/>
  AWS • Azure • GCP • Kubernetes • Terraform • Docker • CI/CD • Observability • DevSecOps
</p>

<p align="center">
  <a href="https://github.com/Dipak-Mehta">GitHub</a> •
  <a href="https://www.linkedin.com/in/dipakmehta/">LinkedIn</a>
</p>

---

## 👨‍💻 About Me

DevOps Engineer focused on building reliable, secure and automated cloud infrastructure and delivery platforms.

I work across **AWS, Azure and GCP**, with hands-on experience in **Kubernetes, Docker, Terraform, CI/CD, networking, monitoring, security and production troubleshooting**.

### Core strengths

- ☁️ Cloud: AWS, Azure, GCP
- ☸️ Containers: Kubernetes, EKS, Docker, Docker Compose
- 🏗️ IaC: Terraform, CloudFormation, Boto3
- 🚀 CI/CD: GitHub Actions, Jenkins, Argo CD
- 📊 Observability: Prometheus, Grafana, Loki, CloudWatch, ELK
- 🔐 Security: IAM, WAF, security groups, CVE remediation, DevSecOps
- 🌐 Networking: VPC, subnets, routing, load balancers, NAT, VPN
- 🐧 Linux: Ubuntu, shell scripting, system troubleshooting
- 🤖 AI/Automation: Python, Ollama, Gemini, automation workflows

---

## 🏗️ Portfolio Architecture

```text
                         ┌─────────────────────┐
                         │      GitHub         │
                         │  Source / Pull Req  │
                         └──────────┬──────────┘
                                    │
                             GitHub Actions
                                    │
                         ┌──────────▼──────────┐
                         │ Docker Build / Test │
                         │ Security / Push     │
                         └──────────┬──────────┘
                                    │
                              Container Image
                                    │
                    ┌───────────────▼──────────────┐
                    │          Kubernetes           │
                    │        EKS / Cluster          │
                    └───────────────┬──────────────┘
                                    │
                              Argo CD / Helm
                                    │
                    ┌───────────────▼──────────────┐
                    │        Application            │
                    └───────────────┬──────────────┘
                                    │
                    ┌───────────────▼──────────────┐
                    │ Prometheus • Grafana • Loki  │
                    │ Logs • Metrics • Alerts      │
                    └──────────────────────────────┘
```

---

## 📂 Repository Structure

```text
devops-portfolio/
├── .github/workflows/ci.yml
├── argocd/application.yaml
├── docker/README.md
├── docs/architecture.md
├── helm-charts/myapp/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       └── service.yaml
├── kubernetes/README.md
├── monitoring/README.md
├── security/README.md
├── scripts/deploy.sh
├── terraform/README.md
└── README.md
```

---

## 🚀 Featured DevOps Projects

### Kubernetes + Terraform + GitOps
Infrastructure and application deployment using Terraform, Kubernetes, Helm, Argo CD and GitHub Actions.

**Demonstrates:** Infrastructure as Code, container orchestration, GitOps, CI/CD and automated deployments.

### CITYOS — Intelligent City Operations Platform
A cloud-native project using Docker, FastAPI, PostgreSQL, Prometheus, Grafana and AI-based analysis.

👉 https://github.com/Dipak-Mehta/cityos

**Demonstrates:** Microservices, observability, Docker Compose, APIs, telemetry and AI integration.

### Cloud & Automation Labs
Hands-on experiments covering AWS/GCP infrastructure, Terraform, Docker, Kubernetes and automation.

---

## 🔄 CI/CD Flow

```text
Developer
   │
   ▼
Git Push
   │
   ▼
GitHub Actions
   ├── Test
   ├── Security Scan
   ├── Docker Build
   └── Image Push
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
           ▼
 Monitoring + Alerts
```

---

## 🧰 Technologies

| Area | Technologies |
|---|---|
| Cloud | AWS, Azure, GCP |
| IaC | Terraform, CloudFormation |
| Containers | Docker, Docker Compose |
| Kubernetes | Kubernetes, EKS, Helm |
| GitOps | Argo CD |
| CI/CD | GitHub Actions, Jenkins |
| Monitoring | Prometheus, Grafana |
| Logging | Loki, CloudWatch |
| Security | IAM, WAF, SG/NACL |
| Scripting | Bash, Python |
| OS | Linux / Ubuntu |
| AI | Ollama, Gemini |

---

## 🎯 What This Repository Shows

This portfolio is organized around the lifecycle of a production DevOps platform:

1. **Provision** infrastructure with Terraform
2. **Package** applications with Docker
3. **Deploy** workloads with Kubernetes
4. **Template** applications with Helm
5. **Automate** delivery with GitHub Actions
6. **Synchronize** environments with Argo CD
7. **Monitor** applications and infrastructure
8. **Secure** cloud and container workloads
9. **Document** architecture and operational practices

---

## 📚 DevOps Playbooks

- [Architecture](docs/architecture.md)
- [Terraform](terraform/README.md)
- [Kubernetes](kubernetes/README.md)
- [Docker](docker/README.md)
- [Monitoring](monitoring/README.md)
- [Security](security/README.md)

---

## 📈 Engineering Focus

**Build → Automate → Observe → Secure → Improve**

I use this approach to reduce manual operations, improve deployment consistency and make production systems easier to operate.

---

## 📫 Connect

- GitHub: https://github.com/Dipak-Mehta
- LinkedIn: https://www.linkedin.com/in/dipak-mehta-devops

> This repository is a practical portfolio of DevOps, cloud infrastructure, automation and platform engineering work.
