# 🚀 AWS Terraform Practice

Hands-on **Terraform + AWS** learning repository focused on building reusable, scalable, and environment-based cloud infrastructure using **Infrastructure as Code (IaC)**.

> **Learning Terraform by building AWS infrastructure.**

---

## ☁️ AWS Resources & Infrastructure

### 🌐 Networking

- Reusable **Terraform VPC Module**
- **3 Public + 3 Private Subnets** across Availability Zones
- Internet Gateway
- NAT Gateway
- Public & Private Route Tables
- Subnet Associations

### 🔐 Security

- AWS Security Groups using Terraform
- Inbound & Outbound Rules


### 💻 Compute

- EC2 instance provisioning using Terraform
- Terraform Data Sources
- Existing VPC & Subnet information retrieval
- Remote State usage

### 🪣 Storage & State Management

- S3 Bucket creation
- Dynamic AWS Regions
- S3 Backend configuration
- Remote Terraform State
- Multiple environment configurations

---

## 🧩 Terraform Concepts Practiced

- Terraform Modules
- Environment Configuration
- Variables & `.tfvars`
- Terraform Workspaces
- Data Sources
- Remote State
- S3 Backend
- Provisioners
- Terraform State Management

---

## 🏗️ Architecture

```text
                         TERRAFORM
                             │
              ┌──────────────┴──────────────┐
              │                             │
           MODULES                    ENVIRONMENTS
              │                             │
              └──────────────┬──────────────┘
                             │
                             ▼
                          AWS VPC
                             │
              ┌──────────────┴──────────────┐
              │                             │
        PUBLIC SUBNETS                PRIVATE SUBNETS
          3 SUBNETS                     3 SUBNETS
              │                             │
              ▼                             ▼
      INTERNET GATEWAY                 NAT GATEWAY
              │                             │
              └──────────────┬──────────────┘
                             │
                             ▼
                    AWS INFRASTRUCTURE
```

---


## 🌎 Environment-Based Configuration

Infrastructure is organized by environment to keep Terraform configurations clean, reusable, and easy to maintain.

Example:

```text
environments/
│
└── Networking/
    │
    └── VPC/
        ├── dev/
        └── qa/
```

Environment-specific configurations use:

- Variables
- `.tfvars`
- Terraform Modules
- Terraform Workspaces

---

## 🧩 Reusable Terraform Modules

Reusable modules are used to reduce code duplication and simplify infrastructure management.

Example:

```hcl
module "vpc_module" {
  source = "../../../modules/VPC"

  # Module variables
}
```

The VPC module is designed to manage networking components such as:

- VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables

---

## 🔐 Security Groups

Security Groups are created and managed using Terraform.

Configured traffic rules include:

| Protocol | Port | Purpose |
|---|---:|---|
| SSH | 22 | Remote access |
| HTTP | 80 | Web traffic |
| HTTPS | 443 | Secure web traffic |
| SMTP | 25 | Email |


Both **inbound and outbound rules** are managed through Terraform configuration.
And many More Rules . 
---

## 💻 EC2 & Data Sources

EC2 instances are provisioned using Terraform.

Terraform **Data Sources** and **Remote State** are also used to retrieve information about existing infrastructure such as:

- VPC
- Subnets
- Existing AWS resources

This helped me understand how Terraform can work with infrastructure that is already managed outside the current configuration.

---

## 🪣 S3 & Remote State

Amazon S3 is used for Terraform backend and state management.

```text
Terraform
    │
    ▼
S3 Backend
    │
    ▼
Terraform State
```

This provides centralized remote storage for Terraform state instead of relying only on local state files.

---

## 🔄 Terraform Workflow

```text
Write Terraform Code
        │
        ▼
terraform init
        │
        ▼
terraform validate
        │
        ▼
terraform plan
        │
        ▼
terraform apply
        │
        ▼
AWS Infrastructure
        │
        ▼
Test & Verify
        │
        ▼
terraform destroy
```

---

## 📚 Learning Progress

- [x] Terraform Fundamentals
- [x] AWS Provider
- [x] Terraform Resources
- [x] Variables
- [x] Outputs
- [x] VPC
- [x] Public & Private Subnets
- [x] Internet Gateway
- [x] NAT Gateway
- [x] Route Tables
- [x] Security Groups
- [x] EC2
- [x] Data Sources
- [x] Terraform Modules
- [x] Environment Configuration
- [x] `.tfvars`
- [x] Terraform Workspaces
- [x] S3 Backend
- [x] Remote State
- [x] Provisioners

---



## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/VishalKonde01/aws-terraform-prac.git
```

### Navigate to the Repository

```bash
cd aws-terraform-prac
```

### Navigate to a Terraform Project

```bash
cd Day-01
```

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Infrastructure Changes

```bash
terraform plan
```

### Apply Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

> ⚠️ **Note:** Always review `terraform plan` before applying changes. AWS resources may incur charges.

---

## 🔐 Security

Sensitive information should never be committed to GitHub.

Avoid committing:

```text
*.tfvars
*.tfstate
*.tfstate.*
.terraform/
.env
AWS credentials
Private keys
```

Use secure AWS authentication methods such as AWS CLI profiles, IAM roles, or environment-based credentials.

---

## 🎯 Learning Focus

This repository documents my practical journey from **Terraform fundamentals to modular and multi-environment AWS infrastructure**.


---

## 👨‍💻 Author

**Vishal Konde**


**GitHub:** [VishalKonde01](https://github.com/VishalKonde01)

---

⭐ **Learning by building.**

🚀 **Terraform + AWS | Infrastructure as Code | Cloud & DevOps**
