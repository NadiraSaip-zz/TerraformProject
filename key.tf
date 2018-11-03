resource "aws_key_pair""jenkins" {
  key_name = "jenkins"
  public_key = "${fil("/var/lib/jenkins/.ssh/id_rsa.pub)}"
}
