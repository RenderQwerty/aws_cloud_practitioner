variable aws_access_key {
  description = "AWS Access Key"
}

variable aws_secret_key {
  description = "AWS Secret Key"
}

variable region {
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket" {
  default = "renderqwerty"
}

data "template_file" "s3_public_policy" {
  template = "${file("files/policies/bucketpolicypermissions.json")}"

  vars {
    bucket_name = "${var.bucket}"
  }
}
