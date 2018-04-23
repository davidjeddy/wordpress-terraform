module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars

  wp_images = "${var.wp_images}"
  region           = "${var.region}"
  local_ip         = "${var.local_ip}"
}

module "dns" {
  source = "./iaas_provider/aws/dns"

  # config vars

  elastic_ip = "${module.compute.public_ip}"
}

module "datastore" {
  source "./iaas_provider/aws/datastore/sql/rds/mariadb"

  #config vars
  
  ec2_private_ip = "${module.ec2.private_ip}"
}
