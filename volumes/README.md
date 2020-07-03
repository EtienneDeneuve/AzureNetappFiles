# Create new Azure NetApp Files Volume with Terraform

To provision a new volume with this template you will need :

- Azure NetApp Files whitelisted subscription (contact me if needed)
- A domain controller
- 1 Azure NetApp Account already configured (network and Active Directory)

Clone this repo, and then, change the variables values into `default.tfvars` and then :

```bash

terraform init && terraform validate && terraform fmt
terraform plan
terraform apply
```