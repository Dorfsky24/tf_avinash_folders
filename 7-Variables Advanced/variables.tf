
#Below is the variables blocks
variable "aws_access_key" {
  type = "string"
  description = "aws_access_key"
  sensitive = true
}

variable "aws_secret_access_key" {
  type = string
  description = "aws_secret_access_key"
  sensitive = true
}

variable "aws_region" {
  type = string
  description = "aws refion for resourdes"
  default = "us-east-1"
  
}

variable "ec2_name_tag" {
  default = ["firstinstance", "secondinstance"]
}

variable "instance_type" {
#                 0          1                 2
  default = ["t2.medium", "t2.micro",    "t2.large"    ]
  type    = list(string)
}
variable "ami_ids" {
  default = {
    linux  = "ami-XXXXXXXXX",
    ubuntu = "ami-XXXXXXXXX"
  }
}

