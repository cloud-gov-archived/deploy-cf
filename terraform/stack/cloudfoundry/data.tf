data "aws_partition" "current" {
}

data "aws_availability_zones" "available" {
}

data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}


data "aws_iam_server_certificate" "wildcard_apps" {
  name_prefix = "star.${var.environment}.cloud.gov"
  latest      = true
}