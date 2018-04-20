output "public_ip" {
  value = "${aws_instance.wordpress.public_ip}"
}
