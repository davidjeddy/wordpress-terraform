module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = "wp_asg"

  # launch configuration (LC)
  lc_name = "wp_lc"

  image_id      = "${var.wp_images}"
  instance_type = "t2.micro"

  # list of security groups for the instance
  security_groups = [
    "${var.security_group}",
  ]

  root_block_device = [
    {
      volume_size = "8"
      volume_type = "gp2"
    },
  ]

  # auto scaling group
  asg_name                  = "wp_asg"
  vpc_zone_identifier       = ["${var.availability_zone}"]
  health_check_type         = "EC2"
  min_size                  = 1
  max_size                  = 1
  desired_capacity          = 1
  wait_for_capacity_timeout = 0

  tags {
    Name     = "wp"
    stage    = "demo"
    language = "tcp"
    service  = "asg"
  }
}
