module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars


  # ASG

  ssl_cert = "${var.ssl_cert}"

  # EC2

  ami_images         = "${var.ami_images}"
  availability_zone  = "${var.availability_zone}"
  availability_zones = "${var.availability_zones}"
  local_ip           = "${var.local_ip}"
  region             = "${var.region}"
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

module "efs" {
  source = "./iaas_provider/aws/storage/efs"

  # config vars

  availability_zones      = "${var.availability_zones}"
  aws_region              = "${var.region}"
  aws_route53_dns_zone_id = "${module.dns.zone_id}"
  subnets                 = "${module.vpc.subnets}"
  vpc_id                  = "${module.vpc.id}"

  ec2_instance_wp_private_ips = ["${module.compute.ec2_instance_wp_private_ips}"]
}

module "s3" {
  source = "./iaas_provider/aws/storage/s3"

  # config vars

  region = "${var.region}"
}

module "vpc" {
  source = "./iaas_provider/aws/network/vpc"
}
