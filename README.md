# terraform-ec2
# 🚀 AWS EC2 Deployment using Terraform

This project demonstrates how to provision an **AWS EC2 instance using Terraform (Infrastructure as Code)**.

## 📌 Project Overview

In this project, Terraform is used to automatically create and configure an EC2 instance on AWS instead of creating it manually through the AWS Management Console.

### Technologies Used

* ☁️ AWS EC2
* 🏗️ Terraform
* 🔐 AWS IAM
* 🐧 Linux
* 💻 Git & GitHub

## 🏗️ Architecture

```text
Developer
    |
    | Terraform
    ↓
AWS Provider
    |
    ↓
AWS EC2 Instance
    |
    ├── Security Group
    ├── Key Pair
    └── Public IP
```

## 📂 Project Structure

```text
terraform-ec2/
│
├── ec2.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

## ⚙️ Prerequisites

Before running this project, make sure you have:

1. An AWS Account
2. Terraform installed
3. AWS CLI installed
4. AWS credentials configured
5. Git installed

Check Terraform:

```bash
terraform --version
```

Check AWS CLI:

```bash
aws --version
```

## 🔐 AWS Configuration

Configure your AWS credentials using:

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Default Region
Output Format
```

> ⚠️ Never upload AWS Access Keys, Secret Keys, `.tfvars` files containing secrets, or private keys to GitHub.

## 🚀 Terraform Deployment

### 1. Clone the repository

```bash
git clone <YOUR-GITHUB-REPOSITORY-URL>
cd terraform-ec2
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate the configuration

```bash
terraform validate
```

### 4. Review the execution plan

```bash
terraform plan
```

### 5. Create the EC2 instance

```bash
terraform apply
```

Enter:

```text
yes
```

Terraform will create the required AWS resources.

## 🔎 Check Resources

After successful deployment, you can verify the EC2 instance from:

**AWS Console → EC2 → Instances**

You can also check Terraform outputs:

```bash
terraform output
```

## 🗑️ Destroy Infrastructure

To remove the resources created by Terraform:

```bash
terraform destroy
```

Enter:

```text
yes
```

This will delete the resources managed by this Terraform configuration.

## 📚 What I Learned

Through this project, I learned:

* Infrastructure as Code (IaC)
* Terraform basics
* AWS provider configuration
* EC2 provisioning using Terraform
* Terraform variables and outputs
* Terraform lifecycle
* `terraform init`
* `terraform plan`
* `terraform apply`
* `terraform destroy`
* Managing AWS infrastructure through code

## 👨‍💻 Author

**Aashish Kumar**

BTech CSE – Cloud Technology & Information Security

### Skills

`AWS` `Terraform` `Linux` `Github`
