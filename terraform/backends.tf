terraform {
  backend "s3" {
    bucket = "renderqwerty-tfstate"
    key    = "terraform/dev/terraform_dev.tfstate"
    region = "us-east-1"
  }
}
