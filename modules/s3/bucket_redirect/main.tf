resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = {
    Name        = "bucket_${var.bucket_name}"
  }
}

resource "aws_s3_bucket" "that" {
  bucket = "www.${var.bucket_name}"
  tags = {
    Name        = "bucket_${var.bucket_name}"
  }
}

resource "aws_s3_bucket_website_configuration" "this" {
  bucket = aws_s3_bucket.this.bucket

  redirect_all_requests_to {
    host_name = var.redirect_host_name
  }
}

resource "aws_s3_bucket_website_configuration" "that" {
  bucket = aws_s3_bucket.that.bucket

  redirect_all_requests_to {
    host_name = "www.${var.redirect_host_name}"
  }
}
