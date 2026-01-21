terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "networking.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
