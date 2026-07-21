moved {
  from = aws_s3_bucket.statictic_site
  to   = aws_s3_bucket.static_site
}

resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name

  tags = {
    Name        = "Personal Website"
    Environment = "Dev"
  }
}