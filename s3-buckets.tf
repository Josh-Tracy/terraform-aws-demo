resource "aws_s3_bucket" "buckets" {
  for_each = var.buckets

  bucket = each.value

  tags = {
    Name        = "jtracy-bucket"
    Environment = "Dev"
    Terraform   = "True"
  }
}

resource "aws_s3_bucket_acl" "acls" {
  for_each = var.buckets

  bucket = aws_s3_bucket.buckets[each.key].id
  acl    = "private"
}