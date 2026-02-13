# Azure DevOps Infrastructure with Terraform & Ansible

This project demonstrates a complete DevOps workflow:
- **Infrastructure provisioning** on Microsoft Azure using **Terraform**
- **Server configuration** using **Ansible** over SSH
- **Version control** with Git and GitHub

The goal is to show a clean, repeatable, and secure approach to building and configuring cloud infrastructure.

---

## 🧱 Architecture Overview

- Azure Resource Group
- Virtual Network + Subnet
- Network Security Group (SSH + HTTP)
- Linux Virtual Machine (Ubuntu)
- SSH key authentication
- Nginx web server installed and configured with Ansible

---

## 🛠️ Tools & Technologies

- **Terraform** – Infrastructure as Code
- **Ansible** – Configuration Management
- **Azure** – Cloud provider
- **Git & GitHub** – Version control
- **WSL (Ubuntu)** – Ansible execution environment
- **Linux (Ubuntu VM)**

---

## 📁 Project Structure

```text
azure-devops-infra/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── versions.tf
├── ansible/
│   └── playbook.yml
├── pipeline/
├── .gitignore
└── README.md
