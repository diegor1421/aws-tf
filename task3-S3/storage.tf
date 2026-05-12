resource "aws_s3_bucket" "cmtr-66o53piv" {
  bucket = var.bucket_name
  tags = merge(
    var.local_tags,
    {
      Name = var.bucket_name
    }
  )
}