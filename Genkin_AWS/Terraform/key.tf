resource "aws_key_pair" "ansible" {
  key_name = "ansible"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}