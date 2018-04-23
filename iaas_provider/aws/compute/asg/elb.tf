# Create a new elastic load balancer
resource "aws_elb" "wp_elb" {
  name              = "wp_elb"
  availability_zone = "${lookup(var.availability_zone, var.region)}"

  access_logs {
    bucket        = "logs"
    bucket_prefix = "elb"
    interval      = 60
  }

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  # listener {
  #   instance_port      = 443
  #   instance_protocol  = "http"
  #   lb_port            = 443
  #   lb_protocol        = "https"
  #   ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  # }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }
  instances                   = ["${aws_instance.foo.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
  tags {
    Name     = "wp"
    stage    = "demo"
    language = "tcp"
    service  = "elb"
  }
}
