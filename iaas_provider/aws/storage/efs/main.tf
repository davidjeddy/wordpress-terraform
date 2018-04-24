# AWS EFS
module "efs" {
  name   = "wp_efs"
  source = "git::https://github.com/cloudposse/terraform-aws-efs.git?ref=0.3.4"

  # required
  availability_zones = ["${var.availability_zones}"]
  aws_region         = "${var.aws_region}"
  security_groups    = ["${var.security_group_id}"]
  subnets            = "${join(",", var.subnets)}"
  vpc_id             = "${var.vpc_id}"
  zone_id            = "${var.aws_route53_dns_zone_id}"
}
