variable "region" {
  default = "us-east-2"
}

variable "appname" {
  default = "artemis"
}
variable "amis" {
  type = "map"

  default = {
     eu-west-1 = "ami-0c21ae4a3bd190229"
     us-east-2 = "ami-0b59bfac6be064b78"
     us-east-1 = "ami-0922553b7b0369273"
   }
}
variable "Enviroment" {
  default = "Dev"
}

variable "Created_by" {
  default = "Nadira"
}
