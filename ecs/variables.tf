
variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default = "qa-ecs-cluster"
}

variable "ecs-service-role-arn" {
    default = "qa-ecs-cluster"
}

variable "ecs-service-name" {
    default = "qa-ecs-service"
}

variable "ecs-load-balancer-name" {
    default = "qa-ecs-load-balancer"
}

