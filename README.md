# Terraform Infrastructure

This Terraform repository automates the provisioning and management of infrastructure components on AWS cloud platform. The primary focus is on creating a basic network architecture and deploying a Dockerized application on an EC2 instance.

## Overview

![alt text](/.github/static/app.png "flow")

The Terraform project in this repository perform the following tasks:

1. **Create VPC:** Sets up a Virtual Private Cloud (VPC) to isolate the infrastructure.

2. **Create Subnet:** Defines a subnet within the VPC for organizing resources.

3. **Create Route Table and Internet Gateway:** Establishes routing rules and enables internet access for resources in the VPC.

4. **Create EC2 Instance:** Launches an EC2 instance where the Dockerized application will be deployed.

5. **Create Firewall:** Configures a firewall to control incoming and outgoing traffic.

6. **Deploy Docker Container:** Installs and runs a Docker container on the EC2 instance.

## Prerequisites

Before using this Terraform project, ensure that you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Appropriate cloud provider credentials configured.

## Usage

1. **Clone this repository:**

    ```bash
    git clone https://github.com/ismailalammar/infrastructure.git
    cd infrastructure
    ```

2. **Initialize Terraform:**

    ```bash
    terraform init
    ```

3. **Create and customize the variables in `terraform.tfvars` file.**

4. **Set `access_key` and `secret_key` as and environment variable to manage your infa**

5. **Review the Terraform configuration:**
    ```bash
    terraform plan
    ```

6. **Apply the Terraform configuration:**

    ```bash
    terraform apply
    ```

    Follow the prompts to confirm the changes.

7. **After provisioning is complete, access the deployed application using the public IP of the EC2 instance.**

## Folder Structure

terraform-infrastructure
```bash 
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│ ├── app
├──   ├── main.tf
├──   ├── variables.tf
├──   ├── outputs.tf
│ ├── subnet
├──   ├── main.tf
├──   ├── variables.tf
├──   ├── outputs.tf
└── README.md
```


## Terraform Modules

- **App Module:**
  - Manages the creation of the EC2 instance.

- **Subnet Module:**
  - Handles the creation of subnets within the VPC.
  - Sets the route table configuration along with an internet gateway.



## Variables

Create and customize the variables in `terraform.tfvars` to tailor the infrastructure to your requirements. Refer to `variables.tf` for a detailed explanation of each variable.


## Contributing

Feel free to contribute by opening issues or pull requests. Contributions and feedback are welcome!

## License

This project is licensed under the [MIT License](LICENSE).
