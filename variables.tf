variable "buckets" {
  type        = map(string)
  description = "The names of the buckets to create."
  default = {
    "app1" = "jtracy-app1-bucket"
    "app2" = "jtracy-app2-bucket"
  }
}

variable "role_arn" {
  type = string
}

variable "external_id" {
  type = string
}
