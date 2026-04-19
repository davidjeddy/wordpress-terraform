output "id" {
  value = "${aws_default_vpc.default.id}"
}

output "subnets" {
  value = "${aws_default_vpc.default.subnets}"
}
