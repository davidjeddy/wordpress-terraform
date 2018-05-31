output "public_ip" {
  value = "${aws_eip.wp_eip.public_ip}"
}

output "ec2_instance_wp_private_ips" {
  value = ["${aws_instance.wp.private_ip}"]
}

output "ec2_instance" {
  value = "${aws_instance.wp.id}"
}
