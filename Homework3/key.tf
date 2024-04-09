 
 # Add Bastion key to the Instances.
 
 resource "aws_key_pair" "deployer" {
  key_name   = "Bastion"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = local.common_tags
  }