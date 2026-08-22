# s3 bucket output
output "s3_bucket" {
  value = aws_s3_bucket.website_bucket.id
}