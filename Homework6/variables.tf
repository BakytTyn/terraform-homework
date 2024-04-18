variable "region" {
  default = ""
  type    = string
}

variable "instance_type" {
  type        = string
  description = "Provide instance type in tfvars file"
}

variable "ports" {
  description = "Provided ports "
  default     = [22, 80, 443]
  type        = list(number)
}