resource "aws_msk_cluster" "main" {
  cluster_name = "${var.env}-kafka-cluster"
  kafka_version = "2.8.0"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type = "kafka.m5.large"
    client_subnets = var.subnet_ids
    security_groups = [aws_security_group.main.id]
  }

  tags = {
    Environment = var.env
  }
}