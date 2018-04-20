resource "aws_eip" "wordpress_eip" {
  instance = "${aws_instance.wordpress.id}"
  vpc      = false
}
