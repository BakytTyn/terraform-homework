provider aws {
    region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.type
  key_name = var.public_key
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  availability_zone = var.availability_zones
  count = var.count_ins

}


variable ami_id {
    description = "Provide ami id"
    default = ""
    type = string
}

variable type {
    description = "Provide instance type"
    default = ""
    type = string
}

variable region {
    description = "Provide region"
    default = ""
    type = string
}

variable public_key {
    default = ""
    type = string
}

variable "availability_zones" {
  default = ""
  type = string
}

variable "count_ins" {
    default = 1
    type = number
}

  

