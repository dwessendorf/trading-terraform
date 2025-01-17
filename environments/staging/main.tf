terraform {
  required_version = ">= 1.0.0"

  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = ">= 1.0.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "confluent" {
  # Here you may configure your provider with necessary credentials.
  # For example:
  # confluent_api_key    = var.confluent_api_key
  # confluent_api_secret = var.confluent_api_secret
}

module "confluent_cluster" {
  source = "../../modules/clusters"

  region               = var.region
  cluster_name         = var.cluster_name
  environment          = var.environment
  confluent_api_key    = var.confluent_api_key
  confluent_api_secret = var.confluent_api_secret

  providers = {
    confluent = confluent
  }
}
