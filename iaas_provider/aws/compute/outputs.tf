output "public_ip" {
  value = "${aws_eip.wp_eip.public_ip}"
}

output "aws_instance_wp_private_ips" {
#  value = ["${aws_instance.wp.private_ips}"]
  value       = ["${aws_instance.wp.private_ip}"]
}
