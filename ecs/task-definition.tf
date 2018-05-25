resource "aws_ecs_task_definition" "qa-sample-definition" {
    family                = "qa-sample-definition"
    container_definitions = "${file("./ecs/task-definition.json")}"
}
