resource "aws_eip" "wordpress_eip" {
  instance = "${aws_instance.wp.id}"
  vpc      = false
}
