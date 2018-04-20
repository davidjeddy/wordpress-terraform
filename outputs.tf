output "wordpress_public_ip" {
  value = "${aws_eip.wordpress_eip.public_ip}"
}

output "wordpress_dns" {
  value = "${aws_route53_record.www.name}"
}
