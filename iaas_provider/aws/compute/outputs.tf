output "region" {
  value = "${aws_instance.wordpress.region}"
}

output "public_ip" {
  value = "${aws_instance.wordpress.public_ip}"
}

output "zones" {
  value = "${aws_instance.wordpress.zones}"
}
