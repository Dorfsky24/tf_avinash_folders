# Below is the provider which helps in connecting with AWS Account
# provider "aws" {
#   region = ""
#   profile = ""
# }


######################################################

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region = var.aws_region
  
}

