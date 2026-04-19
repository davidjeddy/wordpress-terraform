output "s3_bucket_arn" {
  value = "${aws_s3_bucket.elb_logs.arn}"
}

output "s3_bucket" {
  value = "${aws_s3_bucket.elb_logs.bucket}"
}
