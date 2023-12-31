terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
   backend "s3" {
    bucket   = "rs-remote-state-dev"
    key = "minikube"
    region = "us-east-1"
    dynamodb_table = "dynamodb-table-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.30.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }