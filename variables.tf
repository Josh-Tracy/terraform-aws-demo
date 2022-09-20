variable "buckets" {
  type        = map(string)
  description = "The names of the buckets to create."
  default = {
    "app1" = "jtracy-app6-bucket"
    "app2" = "jtracy-app7-bucket"
  }
}
                  