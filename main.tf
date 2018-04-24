module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars


  # ASG

  ssl_cert = "${var.ssl_cert}"

  # EC2

<<<<<<< HEAD
  ami_images = "${var.ami_images}"
  region     = "${var.region}"
  local_ip   = "${var.local_ip}"
=======
  availability_zones = "${var.availability_zones}"
  ami_images         = "${var.ami_images}"
  region             = "${var.region}"
  local_ip           = "${var.local_ip}"
>>>>>>> d16a923ace5364fbc09048deb11f3291ce05bc18
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
