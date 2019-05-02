resource "aws_s3_bucket" "renderqwerty" {
  bucket = "renderqwerty"
  acl    = "private"

  tags = {
    Name = "JBOF"
  }
}
