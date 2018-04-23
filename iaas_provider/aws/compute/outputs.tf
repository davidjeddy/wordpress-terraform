output "public_ip" {
  value = "${aws_eip.wp_eip.public_ip}"
}
