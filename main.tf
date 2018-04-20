module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars

  wordpress-images = "${var.wordpress-images}"
  region           = "${var.region}"
  local_ip         = "${var.local_ip}"
}

module "dns" {
  source   = "./iaas_provider/aws/dns"

  public_ip = "${var.public_ip}"
}
