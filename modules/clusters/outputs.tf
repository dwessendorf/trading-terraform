output "cluster_id" {
  description = "ID of the created Kafka cluster"
  value       = confluent_kafka_cluster.this.id
}

output "bootstrap_endpoint" {
  description = "Bootstrap endpoint for the Kafka cluster"
  value       = confluent_kafka_cluster.this.bootstrap_endpoint
}

