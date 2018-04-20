variable "public_ip" {
  description = "The public IP to assign to the DNS record."
  type        = "string"
  records     = "${module.compute.public_ip}"
}
