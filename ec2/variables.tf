//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "autoscaling-group-name" {
    description = "The name for the autoscaling group for the cluster."
    default     = "qa-ecs-asg"
}

variable "max-instance-size" {
    description = "The name for the autoscaling group for the cluster."
    default     = 1
}

variable "min-instance-size" {
    description = "The name for the autoscaling group for the cluster."
    default     = 1
}

variable "desired-capacity" {
    description = "The name for the autoscaling group for the cluster."
    default     = 1
}

variable "health-check-grace-period" {
    description = "The name for the autoscaling group for the cluster."
    default     = 300
}

//----------------------------------------------------------------------
// Application Load Balancer Variables
//----------------------------------------------------------------------

variable "load-balancer-name" {
    description = "The name for the autoscaling group for the cluster."
    default     = "qa-ecs-load-balancer"
}

variable "target-group-name" {
    description = "The name for the autoscaling group for the cluster."
    default     = "qa-ecs-target-group"
}

//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
    description = "The name for the autoscaling group for the cluster."
    default = "qa-ecs-launch-configuration"
}

variable "image-id" {
    description = "The name for the autoscaling group for the cluster."
    default = "ami-40ddb938"
}

variable "instance-type" {
    description = "The name for the autoscaling group for the cluster."
    default = "t2.small"
}
