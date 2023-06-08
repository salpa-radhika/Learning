

resource "aws_instance" "terraform_instance" {
  ami           = "ami-092b51d9008adea15"
  instance_type = "t2.micro"
  
  key_name = var.ami
  tags = {
  name = "terraform-instance"
  }
}

resource "aws_key_pair" "key_pair" {
  key_name   = "${var.key_name}"
  public_key = "${var.public_key}"
}
