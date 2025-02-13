resource "aws_s3_bucket" "binance_streaming_bucket" {
  bucket = "${var.bucket_name}-${var.env}"  
  acl = "private"
  force_destroy = true
}