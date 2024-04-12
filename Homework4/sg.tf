# Create security group 
# with inbounds ports 22, 80, 443  open and attach to the Instances.


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  # inbound rules incoming traffic
  ingress {  
    description      = "provide port 443"
    from_port        = var.ports[0]
    to_port          = var.ports[0]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 
    ingress {
    description      = "provide port 80"
    from_port        = var.ports[1]
    to_port          = var.ports[1]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  

    ingress {
    description      = "provide port 22"
    from_port        = var.ports[2]
    to_port          = var.ports[2]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  
  # outboud rules
   egress {  
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # any protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }
  }

