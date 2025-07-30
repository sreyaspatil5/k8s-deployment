
# Kubernetes Three-Tier Web Application Deployment

This repository contains a Kubernetes-based deployment of a three-tier web application architecture consisting of a frontend, backend, and MySQL database. It includes CI/CD integration with Jenkins and a scheduled backup system that uploads MySQL dumps to Amazon S3.

DELETED THE "dist" FOLDER AND   "jar" FILE  DUE TO PRIVACY POLICY

## Project Structure

<img width="935" height="994" alt="Screenshot 2025-07-30 131301" src="https://github.com/user-attachments/assets/85061bb0-9130-4dfa-bb9e-af61222c6ba4" />


## Tech Stack

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** Spring Boot (Java)
- **Database:** MySQL
- **Containerization:** Docker
- **Orchestration:** Kubernetes (Deployments, Services, PV/PVC)
- **CI/CD:** Jenkins (Jenkinsfile)
- **Backup:** Shell script with AWS CLI to S3
- **Monitoring (optional):** Prometheus, Grafana

## Features

- Modular three-tier architecture
- Persistent storage for MySQL using PV/PVC
- Jenkins pipeline for automated build and deployment
- Scheduled MySQL backups to Amazon S3
- Scalable and production-ready setup

## Directory Structure

```
├── frontend/
│   └── Dockerfile
├── backend/
│   └── Dockerfile
├── mysql/
│   └── init.sql
├── k8s/
│   ├── deployments/
│   ├── services/
│   ├── pv-pvc/
├── jenkins/
│   └── Jenkinsfile
├── backup/
│   └── s3-backup.sh
```

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/sreyaspatil5/Kubernetes-three-tier-deployment
cd Kubernetes-three-tier-deployment
```

### 2. Build Docker images

```bash
docker build -t frontend ./frontend
docker build -t backend ./backend
docker build -t mysql ./mysql
```

### 3. Apply Kubernetes manifests

```bash
kubectl apply -f k8s/pv-pvc/
kubectl apply -f k8s/deployments/
kubectl apply -f k8s/services/
```

### 4. Configure Jenkins

- Import the `Jenkinsfile` into your Jenkins pipeline.
- Ensure Jenkins agents have Docker and kubectl installed.

### 5. Set up MySQL backup to S3

- Update AWS credentials in `s3-backup.sh`.
- Schedule the script using `cron` or Kubernetes `CronJob`.

## Reference Tutorial

For a full walkthrough, visit the [Code2Tutorial](https://code2tutorial.com/tutorial/47e7ad22-e14b-40ac-95d5-e6f7d33f6946/index.md).

## License

This project is licensed under the MIT License.


