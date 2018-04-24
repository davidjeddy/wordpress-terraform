module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars

  # ASG

  ssl_cert = "${var.ssl_cert}"

  # EC2

  availability_zone  = "${var.availability_zone}"
  availability_zones = "${var.availability_zones}"
  ami_images         = "${var.ami_images}"
  region             = "${var.region}"
  local_ip           = "${var.local_ip}"
  s3_bucket          = "${module.s3.s3_bucket}"
}

module "dns" {
  source = "./iaas_provider/aws/dns"

  # config vars

  elastic_ip = "${module.compute.public_ip}"
}

module "datastore" {
  source = "./iaas_provider/aws/datastore/sql"

  #config vars

  ec2_instance_wp_private_ips = "${module.compute.ec2_instance_wp_private_ips}"
}

module "s3" {
  source = "./iaas_provider/aws/storage/s3"

  # config vars

  region  = "${var.region}"
}

module "efs" {
  source = "./iaas_provider/aws/storage/efs"

  # config vars

  subnets = "${var.region}"
  vpc_id  = "${module.vpc.id}"
}

module "vpc" {
  source = "./iaas_provider/aws/network/vpc"

  # config vars
}
