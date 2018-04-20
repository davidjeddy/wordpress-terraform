module "compute" {
  source = "./iaas_provider/aws/compute"

  # config vars

  wordpress-images = "${var.wordpress-images}"
  region           = "${var.region}"
  local_ip         = "${var.local_ip}"
}

module "dns" {
  source   = "./iaas_provider/aws/compute"
  region   = "${var.region}"
  local_ip = "${var.local_ip}"
}
