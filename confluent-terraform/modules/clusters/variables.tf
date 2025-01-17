variable "region" {
  description = "The GCP region where the Confluent Cloud cluster will be deployed."
  type        = string
}

variable "cluster_name" {
  description = "The name of the Confluent Cloud cluster."
  type        = string
}

variable "environment" {
  description = "The environment label."
  type        = string
}

# API credentials to be forwarded to the provider if needed.
variable "confluent_api_key" {
  description = "Confluent Cloud API key."
  type        = string
  sensitive   = true
}

variable "confluent_api_secret" {
  description = "Confluent Cloud API secret."
  type        = string
  sensitive   = true
}
