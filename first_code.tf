provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-20210327" 
  acl    = "private"
}
# Varibale example
variable "my-var" {
  
  description = "This is a varibale example"
  type = string
  default = "Hello"
  sensitive  = false
}