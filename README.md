# Aridnik-CICD-Terraform
##### Sample terraform files for creating below resources

  - VPC
  - Subnets
  - Route Tables
  - Internet Gateway
  - Routings
  - Route Table Subnet Associations
  - Security Groups
  - 6 EC2 Instances
    * infra-jenkins
    * infra-nexus
    * dev-tomcat
    * qa-tomcat
    * staging-tomcat
    * prod-tomcat
### Commands
```sh
# Clone cicd-terraform repository
$ git clone https://github.com/aridnik/cicd-terraform.git
$ cd cicd-terraform

# Export Keys for AWS Access for terraform provider
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-1"

# Initialize a new or existing Terraform configuration
$ terraform init

# Generate and show an execution plan
$ terraform plan

# Builds or changes infrastructure
$ terraform apply

# Read an output from a state file for IPs
$ terraform output

# Inspect Terraform state or plan
$ terraform show
```
