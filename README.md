# Azure DevOps Infrastructure with Terraform & Ansible

This project demonstrates a complete DevOps workflow:
- Infrastructure provisioning on Microsoft Azure using Terraform
- Server configuration using Ansible over SSH
- Version control with Git and GitHub

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

- Terraform – Infrastructure as Code
- Ansible – Configuration Management
- Azure – Cloud provider
- Git & GitHub – Version control
- WSL (Ubuntu) – Ansible execution environment
- Linux (Ubuntu VM)

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
```

> Sensitive and runtime files such as `terraform.tfvars`, Terraform state files, SSH keys, and Ansible inventory are intentionally excluded from version control.

---

## 🚀 Infrastructure Lifecycle (Terraform)

Terraform is used to provision all Azure infrastructure resources.

### Prerequisites
- Azure subscription
- Terraform installed
- Azure CLI authenticated (`az login`)
- SSH key pair generated locally

### Deploy
```bash
cd terraform
terraform init -reconfigure -backend-config="dev\backend.hcl"
terraform plan
terraform apply
```

### Destroy
```bash
cd terraform
terraform destroy
```

The entire infrastructure can be safely destroyed and recreated at any time using the same Terraform code.

---

## ⚙️ Configuration Management (Ansible)

Once the infrastructure is provisioned, Ansible is used to configure the Linux virtual machine.

### Ansible responsibilities
- Update system packages
- Install and configure Nginx
- Ensure Nginx is running and enabled on boot
- Deploy a simple static web page

### Run Ansible (from WSL / Ubuntu)
```bash
cd /mnt/c/Users/Filip/azure-devops-infra/ansible
ansible -i inventory.ini web -m ping
ansible-playbook -i inventory.ini playbook.yml
```

After successful execution, the web server is available via the VM public IP:
```text
http://<VM_PUBLIC_IP>
```

---

## 🔐 Security & Best Practices

- SSH key-based authentication only (no passwords)
- SSH public key injected into the VM via Terraform using `file()`
- No secrets or credentials stored in the repository
- Terraform state (`*.tfstate*`) and variables (`*.tfvars`) excluded from version control
- Ansible inventory excluded from version control (e.g. `ansible/inventory.ini`)

---

## 📌 Key Concepts Demonstrated

- Infrastructure as Code (IaC)
- Repeatable destroy/redeploy workflow
- Separation of provisioning (Terraform) and configuration (Ansible)
- Secure Git hygiene
- Linux server automation via SSH

---

## 📈 Future Improvements

- Refactor Ansible playbook into roles
- Add CI/CD pipeline (Azure DevOps or GitHub Actions)
- Configure remote Terraform backend
- Add monitoring and logging

---

## 👤 Author

**Filip Vasilic**  
DevOps / Infrastructure Enthusiast
