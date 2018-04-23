resource "aws_eip" "wp_eip" {
  instance = "${aws_instance.wp.id}"
  vpc      = false
}
