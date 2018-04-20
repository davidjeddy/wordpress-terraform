output "wordpress_public_ip" {
  description = "Public IP to access the web resource."
  value       = "${module.compute.public_ip}"
}

output "wordpress_dns" {
  description = "Public DNS to access the web resource."
  value       = "${module.dns.public_dns}"
}
