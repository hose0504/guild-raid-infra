terraform {
  backend "s3" {
    bucket       = "guild-raid-tfstate-202603171036"
    key          = "event9/terraform.tfstate"
    region       = "ap-northeast-2"
    use_lockfile = true
  }
}