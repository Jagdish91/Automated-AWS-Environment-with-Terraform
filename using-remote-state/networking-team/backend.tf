terraform {
  backend "s3" {
    bucket = "terraform-demo-007-statefile"
    key    = "networking.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
