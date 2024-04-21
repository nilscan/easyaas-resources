variable "name" {
  description = "Name of the SSM Parameter"
}

variable "value" {
  description = "Value of the SSM Parameter"
}

variable "type" {
    description = "Type of the SSM Parameter"
    default = "String"
}
