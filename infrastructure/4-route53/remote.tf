terraform {
  backend "s3" {
    bucket         = "edge-marketplace-terraform-state-dev"
    key            = "route-53/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "edge_marketplace_terraform_lock_state_dev"
    encrypt        = true
  }
}