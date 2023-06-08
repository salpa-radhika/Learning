

resource "aws_instance" "terraform_instance" {
  ami           = "ami-092b51d9008adea15"
  instance_type = "t2.micro"
  
  key_name = "client_server"
  tags = {
  name = "terraform-instance"
  }
}
