terraform {
    backend "local" {
      path = "terraform.tfstate"
    }
  # backend "s3" {
  #   bucket  = "my-study-terraform-bucket"
  #   key     = "prod/aws_infra"
  #   region  = "us-east-1"
  #   profile = "estudo-terraform"

  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
  #   backend "http" {
  #   address        = "http://localhost:5000/terraform_state/my_state"
  #   lock_address   = "http://localhost:5000/terraform_lock/my_state"
  #   lock_method    = "PUT"
  #   unlock_address = "http://localhost:5000/terraform_lock/my_state"
  #   unlock_method  = "DELETE"
  # }

#  backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "estudy_certification"

#     workspaces {
#       name = "my-aws-app"
#     }
#   }

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}