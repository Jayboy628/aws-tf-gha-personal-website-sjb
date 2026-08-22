output "s3_bucket_name" {
  description = "Name of the S3 bucket hosting the personal website."
  value       = aws_s3_bucket.static_site.id
}