# Create security group 
# with inbounds ports 22, 80, 443  open and attach to the Instances.


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  # inbound rules incoming traffic
  ingress {  
    description      = "TLS from VPC"
    from_port        = 443  #HTTPS
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    description      = "TLS from VPC"
    from_port        = 80  #HTTP
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    description      = "TLS from VPC"
    from_port        = 22  #SSH
    to_port          = 22
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