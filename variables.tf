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
  description = "The ARN of the role to assume"
}

variable "external_id" {
  type = string
  description = "The External ID to provide for the role you are assuming"
}

variable "session_name" {
  type = string
  description = "The session name for the role you are assuming"
}
