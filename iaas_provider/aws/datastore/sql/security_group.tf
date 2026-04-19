resource "aws_security_group" "wp_db_security_group" {
  name        = "wp_db_security_group"
  description = "Control access to the wp database server."
}

# TCP

# INGRESS

# allow ssh access from port 3306 (sql) from ${var.ec2_instance_wp_private_ips}/32
resource "aws_security_group_rule" "ingress_sql" {
  security_group_id = "${aws_security_group.wp_db_security_group.id}"
  type              = "ingress"
  cidr_blocks       = ["${var.ec2_instance_wp_private_ips[0]}/32"]
  protocol          = "tcp"
  from_port         = 3306
  to_port           = 3306
}

# EXGRESS

# allow reply traffic from the server to the internet on ephemeral ports
resource "aws_security_group_rule" "engress_sql" {
  security_group_id = "${aws_security_group.wp_db_security_group.id}"
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "all"
  from_port         = 1024
  to_port           = 65535
}
