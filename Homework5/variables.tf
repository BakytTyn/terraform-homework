variable region {
  type = string
  description = "Provide region"
}

variable vpc_cidr {
  type = string
  description = "Provide vpc cidr block"
}

variable public_cidr {
  type = list(object({
    cidr = string
    subnet_name = string
  }))
  description = "Provide public cidr block"
}

variable private_cidr {
  type = list(object({
    cidr = string
    subnet_name = string
  }))
  description = "Provide private1 cidr block"
}

variable instance {
  type        = list(object({
    ec2_type = string
    ec2_name = string
  }))
}

variable ports {
  type        = list(number)
  default     = [22, 80]
}