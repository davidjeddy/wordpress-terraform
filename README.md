# Wordpress Terraform

## About

Install wp in the AWS Cloud using Terraform

![wp Landing Page](./docs/imgs/wp_landing_page.png "wp Landing Page")


## Credit

With assistance from http://architecture.ginocoates.com/2017/01/01/terraforming-wp-on-aws/

# FAQ

__Q)__ You derp, wp and Terraform are easy, why did you do this?

__A)__ 'cause Im not a uber-TF-brain like you; learning takes time and practice.

__Q)__ I did everything it said but when I use the DNS address nothing happens, why?!

__A)__ Terraform will output success when AWS receives the request to provision the EC2 instance; however, the instance still takes time to start up.

__Q)__ Can I use this?

__A)__ Yes, in accordance to the attached MIT Lic.

__Q)__ Why am I getting charged by AWS?

__A)__ Most likely reason is that you might have forgot to run the `terraform destroy` command to remove the resources that were created.

## Requirements
 - An (AWS)[https://aws.amazon.com/] account
 - (aws-cli)[https://docs.aws.amazon.com/cli/latest/userguide/installing.html]
 - Terminal
 - (Terraform)[https://www.terraform.io/]

## Support

Email: me@davidjeddy.com

Twitter: https://twitter.com/David_J_Eddy

Web: https://davidjeddy.com

## Usage

### Pre-flight

Create a key pair in your AWS console in the __us-east-2__ region (Very important!), call the key pair __aws__.
Download the `aws.pem` keypair to this project root.


### Initialize
```
cd /to/your/project/root/parent/directory
git clone https://github.com/davidjeddy/wp-terraform.git
cd wp-terraform
terraform init
cp ~/your/downloads/aws.pem ./aws.pem
```

### Execute

```
terraform  plan --out terraform.plan --var-file=./variables.tfvars
terraform apply terraform.plan
```

### Terminate

When you are all done remove all the created resources using
```
terraform destroy
```
