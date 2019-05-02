resource "aws_s3_bucket" "static_site" {
  bucket = "${var.bucket}"
  acl    = "public-read"
  policy = "${data.template_file.s3_public_policy.rendered}"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
