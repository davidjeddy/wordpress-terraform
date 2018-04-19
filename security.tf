resources "aws_security_group" "wordpress_security_group" {
  name = "wordpress_security_group"
  description = "Control the access to the wordpress server."
}

# allow http access on port 80 for all address/ports
resouce "aws_resource_group_rule" "ingress_http" {
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "ingress"
  cide_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
  from_port = 80
  to_port = 80
}

# allow https access on port 443 for all address/ports
resource "aws_resource_group_rule" "ingress" {  
  security_group_id = "${aws_security_group.wordpress_security_group.id}"
  type = "ingress"
  cide_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
  from_port = 443
  to_port = 443
}
