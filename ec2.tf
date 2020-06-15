provider "aws" {
  alias="ss"
  assume_role { role_arn = "arn:aws:iam::574124422856:role/terraformcloud" }
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  provider=aws.ss
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
