terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "snowflake" {
  organization_name = var.snowflake_org
  account_name      = var.snowflake_account_name
  user              = var.snowflake_user
  password          = var.snowflake_password
  role              = "ACCOUNTADMIN"
}

provider "aws" {
  region = var.aws_region
}
