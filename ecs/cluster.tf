resource "aws_ecs_cluster" "qa-ecs-cluster" {
    name = "${var.ecs-cluster-name}"
}
