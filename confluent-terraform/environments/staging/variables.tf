variable "region" {
  description = "The GCP region to target for resources and configuring the Confluent Cloud cluster."
  type        = string
  default     = "europe-west3"
}

variable "cluster_name" {
  description = "The name of the Confluent Cloud cluster."
  type        = string
  default     = "staging-stock-info-cluster"
}

variable "environment" {
  description = "The environment label (e.g., staging, production)"
  type        = string
  default     = "staging"
}

# Confluent Cloud API Credentials
variable "confluent_api_key" {
  description = "The API key for Confluent Cloud."
  type        = string
  sensitive   = true
}

variable "confluent_api_secret" {
  description = "The API secret for Confluent Cloud."
  type        = string
  sensitive   = true
}
