#web
resource "aws_instance" "instance1" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-public.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data              = "${file("apache.sh")}"
  associate_public_ip_address = "true"

   tags {
    Name = "{var.appname}"
    Enviroment = "${var.Enviroment}"
    Created_by = "{var.Created_by}"
} 

lifecycle {
  
   tags {
    Name = "{var.appname}"
    Enviroment = "${var.Enviroment}"
    Created_by = "{var.Created_by}"
    prevent_destroy = "false"
  }
 }
 

#DB host
resource "aws_instance" "instance2" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-private.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data              = "${file("db.sh")}"
}
   tags {
    Name = "{var.appname}"
    Enviroment = "${var.Enviroment}"
    Created_by = "{var.Created_by}"
}
lifecycle {
   prevent_destroy = "false"
}
}
