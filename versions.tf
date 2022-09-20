terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
  # Configuration options

  assume_role {
    role_arn = "arn:aws:iam::849506427193:role/jtracy-test"
    external_id = "joshtest"
  }
}