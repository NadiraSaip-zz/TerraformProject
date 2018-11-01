resource "aws_key_pair" "project1" {
  key_name   = "project1"
  public_key = "${file("/var/lin/jenkins/.ssh/id_rsa.pub")}"
}
