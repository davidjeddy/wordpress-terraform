resource "aws_security_group" "wordpress_security_group" {
  name = "wordpress_security_group"
  description = "Control the access to the wordpress server."
}

# allow http access on port 80 for all address/ports
resource "aws_security_group_rule" "ingress_http" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
  from_port = 80
  to_port = 80
}

# allow https access on port 443 for all address/ports
resource "aws_security_group_rule" "ingress" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
  from_port = 443
  to_port = 443
}

# allow reply traffic from the intent ro the server on ephemeral ports
resource "aws_security_group_rule" "ingress_reply" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
  from_port = 1024
  to_port = 65535
}

# allow reply traffic from the intent ro the server on ephemeral ports
resource "aws_security_group_rule" "engress_reply" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "egress"
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "all"
  from_port = 0
  to_port = 0
}

# allow ssh access from port 22 from variables.tfvars::var.local_ip
resource "aws_security_group_rule" "ingress_ssh" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "egress"
  cidr_blocks = ["${var.local_ip}/32"]
  protocol = "tcp"
  from_port = 22
  to_port = 22
}
