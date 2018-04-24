# Create a new elastic load balancer
resource "aws_elb" "wp_elb" {
  availability_zones          = "${var.availability_zones}"
  name                        = "wp-elb"
  instances                   = ["${aws_instance.wp.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 300
  connection_draining         = true
  connection_draining_timeout = 300

  access_logs {
    bucket        = "${module.storage.elb_logs.name}"
    bucket_prefix = ""
    interval      = 60
  }

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  # Uncomment once SSL/TLS cert is approved on domain.tld
  # listener {
  #   instance_port      = 443
  #   instance_protocol  = "http"
  #   lb_port            = 443
  #   lb_protocol        = "https"
  #   ssl_certificate_id = "${var.ssl_cert}"
  # }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags {
    Name     = "wp"
    stage    = "demo"
    language = "tcp"
    service  = "elb"
  }

}
