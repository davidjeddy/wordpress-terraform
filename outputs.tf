output "wordpress_public_ip" {
  description = "Public IP to access the web resource."
  value = "${aws_eip.wordpress_eip.public_ip}"
}

output "wordpress_dns" {
  description = "Public DNS to access the web resource."
  value = "${aws_route53_record.www.name}"
}
