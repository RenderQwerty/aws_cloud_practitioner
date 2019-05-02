variable aws_access_key {
  description = "AWS Access Key"
}

variable aws_secret_key {
  description = "AWS Secret Key"
}

variable s3_bucket_name {
  description = "Default bucket"
  default     = "renderqwerty"
}

variable s3_object_test {
  description = "test image for s3 bucket"
  default     = "files/test.txt"
}
