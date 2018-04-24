output "public_dns" {
  value = "${aws_route53_record.www.name}"
}

output "zone_id" {
  value = "${aws_route53_record.www.zone_id}"
}
