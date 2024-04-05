provider aws {
    region = "us-east-1"
}
#Create a key in AWS with the name Bastion-key with Terraform

resource "aws_key_pair" "deployer" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

#Create 2 S3 buckets: 

#1st with the name: kaizen-yourname

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-bakyta123"
}

#2nd with the name: kaizen and add prefix

resource "aws_s3_bucket" "example1" {
  bucket_prefix = "kaizen123-"
}

#Created manually three buckets and import them to terraform code

resource "aws_s3_bucket" "month" {
  bucket = "april-batch"
}
resource "aws_s3_bucket" "month2" {
  bucket = "april-batch2"
}
resource "aws_s3_bucket" "month3" {
  bucket = "april-batch3"
}

#Provide import commands:
#terraform import aws_s3_bucket.month april-batch && terraform import aws_s3_bucket.month2 april-batch2 && 
#terraform import aws_s3_bucket.month3 april-batch3