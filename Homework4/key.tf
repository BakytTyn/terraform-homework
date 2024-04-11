# Add key to the Instances.
 
 resource "aws_key_pair" "deployer" {
  key_name   = var.public_key
  public_key = file("~/.ssh/id_rsa.pub")
  }