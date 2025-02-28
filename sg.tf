resource "aws_security_group" "artemis" {
  name        = "artemis"
  description = "Artemis security group"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
tags {
    Name = "{var.appname}"
    Enviroment = "${var.Enviroment}"
    Created_by = "{var.Created_by}"
}
}
