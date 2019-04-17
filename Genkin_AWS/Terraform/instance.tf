resource "aws_instance" "Fidor" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  provisioner "local-exec" {
     command = "echo ${aws_instance.Fidor.public_ip} >> fidor_public.txt"
     
  }
  # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.fidor.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.ansible.key_name}"
}