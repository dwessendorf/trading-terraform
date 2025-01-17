output "cluster_id" {
  description = "The ID of the created Confluent Cloud cluster."
  value       = confluent_kafka_cluster.this.id
}

output "cluster_status" {
  description = "The status of the Confluent Cloud cluster."
  value       = confluent_kafka_cluster.this.status
}

