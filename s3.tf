resource "aws_s3_bucket" "renderqwerty" {
  bucket = "${var.s3_bucket_name}"
  acl    = "private"

  tags = {
    Name = "JBOF"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket        = "${var.s3_bucket_name}"
  source        = "${var.s3_object_test}"
  storage_class = "INTELLIGENT_TIERING"
  key           = "test.txt"
  acl           = "public-read"
}
