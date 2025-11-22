<p align="center">
  <img src="static/logos/nti-logo.png" height="100"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="static/logos/ivolve-logo.png" height="100"/>
</p>

<h1 align="center" style="font-family: 'Poppins', sans-serif; color: #e0e0e0; font-size: 2.8rem;">
   DevOps Graduation Project
</h1>

<h3 align="center" style="font-family: 'Poppins', sans-serif; color: #b0bec5;">
  In Collaboration with iVolve Technologies
</h3>

<p align="center" style="max-width: 700px; font-size: 1.1rem; color: #cfd8dc;">
  This project represents the culmination of the DevOps training at the National Telecommunication Institute (NTI),
  in partnership with iVolve Technologies. 
</p>

---
# 🚀 Final DevOps Project Documentation

## 📘 Overview

This documentation covers the full architecture, setup steps, and automation process for the Final DevOps Project including **AWS, Terraform, Jenkins, Ansible, Docker, Kubernetes, and ArgoCD**.

---

## 📦 Components Included

* AWS Infrastructure (EC2, VPC, Security Groups, IAM)
* Terraform IaC deployment
* Jenkins CI/CD pipeline with agent on EC2
* Docker containerization
* Kubernetes deployment
* ArgoCD GitOps continuous delivery
* Ansible infrastructure automation

---

## 🏗 Architecture Diagram

*(Screenshot placeholder – insert architecture image here)*

Caption: **Overall DevOps CI/CD Architecture**

---

## 1️⃣ AWS Setup

*(Screenshots placeholders)*

* EC2 instances created for Jenkins & Agent
* VPC, subnets, internet gateway created

Caption examples:

* **AWS EC2 instance running – public IP displayed**
  ![AWS EC2 instance running](images/EC2_instances.png)
* **Security Group allowing SSH, HTTP, HTTPS ports**
  ![Security Group allowing SSH](images/Security_Groups.png)

---

## 2️⃣ Terraform

*Path: /terraform/*

```bash
tf init
tf plan
tf apply -auto-approve
```

*(Screenshot placeholders)*
Caption examples:

* **Terraform apply successful provisioning**
* **Terraform state & S3 backend configured**

---

## 3️⃣ Ansible

*Path: /ansible/*
Run playbook:

```bash
ansible -i inventory/hosts all -m ping
ansible-playbook -i inventory/hosts playbooks/setup.yml
```

Screenshots needed:

* Inventory configuration
* Successful ping
* Playbook execution

---

## 4️⃣ Jenkins

* Installed and configured on EC2
* Created pipeline for automated deployment

Pipeline triggers build when code is pushed to GitHub.

Screenshot examples:

* Jenkins Dashboard
* Nodes showing connected agent
* Pipeline build successful page

---

## 5️⃣ Docker

* App containerized using Dockerfile
* Pushed to DockerHub automatically via pipeline

Screenshot examples:

* Docker build logs
* DockerHub repository

---

## 6️⃣ Kubernetes

* Minikube / Amazon EKS cluster
* Deployment + Service YAML applied

Run:

```bash
kubectl apply -f k8s/
kubectl get pods
```

Screenshots examples:

* kubectl get nodes / pods
* app external access

---

## 7️⃣ ArgoCD

* Added Kubernetes app connected to Git repo

Screenshot examples:

* ArgoCD dashboard
* Sync status healthy

---

## ✨ Final Result

Fully automated CI/CD pipeline deploying application to Kubernetes via GitOps.

---

## 👨‍💻 Author

**Mohamed Ahmed – DevOps Engineer**
Cloud | CI/CD | Terraform | Kubernetes | Jenkins | Ansible | AWS

---

## 📩 Contact

LinkedIn: *Add link here*
GitHub: *Add repo here*


