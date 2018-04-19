# Wordpress Terraform

# About

Install Wordpress in the AWS Cloud using Terraform

# Credit

With assistance from http://architecture.ginocoates.com/2017/01/01/terraforming-wordpress-on-aws/

# Requirements
AWS account
aws-cli
terminal
terraform

# Support

Email: me@davidjeddy.com
Twitter: https://twitter.com/David_J_Eddy
Web: https://davidjeddy.com

# Usage
## Dependencies
Create a key pair in your (AWS console)[https://us-east-2.console.aws.amazon.com/ec2/v2/home?region=us-east-2#KeyPairs:sort=keyName], call it `aws`.
Download the aws.pem keypair

cd /to/your/project/root/parent/directory
git clone https://github.com/davidjeddy/wordpress-terraform.git
cd wordpress-terraform

## Start
terraform init
cp ~/your/downloads/aws.pem ./aws.pem
terraform  plan --out terraform.plan --var-file=./variables.tfvars
terraform apply terraform.plan

## End
When you are all done remove all the created resources using
terraform destroy
