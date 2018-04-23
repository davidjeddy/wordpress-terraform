module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars

  # EC2
  wp_images = "${var.wp_images}"
  region    = "${var.region}"
  local_ip  = "${var.local_ip}"
  # ASG
  ssl_cert = "${var.ssl_cert}"
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
