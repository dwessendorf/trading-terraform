variable "region" {
  description = "Region where the cluster will be created"
  type        = string
}

variable "cluster_name" {
  description = "Name of the Kafka cluster"
  type        = string
}

variable "environment_id" {
  description = "Confluent environment ID"
  type        = string
  default     = "env-37ox0w"  # Or another appropriate value.
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
