output "wordpress_public_ip" {
  description = "Public IP to access the web resource."
  value       = "${aws_instance.wordpress_eip.public_ip}"
}
