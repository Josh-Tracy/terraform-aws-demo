output "s3_bucket_arns" {
  value = tomap({
  for key, bucket in aws_s3_bucket.buckets : key => bucket.arn })
}