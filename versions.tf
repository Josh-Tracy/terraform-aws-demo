terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.50.0"
    }
  }
}

provider "aws" {
  # Configuration options
  assume_role {
    role_arn = var.role_arn
    external_id = var.external_id
    session_name = var.session_name
}
}
