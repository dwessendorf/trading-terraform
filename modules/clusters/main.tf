terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = ">= 1.0.0"
    }
  }
}

resource "confluent_kafka_cluster" "this" {
  display_name = var.cluster_name
  availability = "SINGLE_ZONE"
  cloud        = "GCP"
  region       = var.region
  
  basic {}

  environment {
    id = var.environment_id
  }
}