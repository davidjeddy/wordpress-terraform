# Main TF
# Import modules as needed and configure herein

module "aws_ec2" {
  source ="./iaas_service/aws/ec2"
}

module "outputs" {
  source ="./outputs"
}

module "provider" {
  source ="./provider"
}

module "route_53" {
  source ="./iaas_service/aws/ec2"
}

module "variables" {
  source ="./variables"
}
