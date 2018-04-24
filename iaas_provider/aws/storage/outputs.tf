output "s3_bucket_arn" {
  value = "${aws_s3_bucket.elb_logs.arn}"
}

output "s3_bucket_name" {
  value = "${aws_s3_bucket.elb_logs.name}"
}
