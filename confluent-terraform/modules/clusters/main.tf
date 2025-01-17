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
  environment {
    id = var.environment_id
  }

  cloud {
    provider = "GCP"
    region   = var.region
  }

  basic {
    # Basic type cluster with 1 CKU (Confluent Kafka Unit)
    cku = 1
  }
}
