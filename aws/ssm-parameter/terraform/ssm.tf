resource "aws_ssm_parameter" "foo" {
  name  = var.name
  type  = var.type
  value = var.value
}
