variable "environment" {
  type = string
  description = "The name of the environment. Example: westa"
}

# variable "alb_zone_id" {
#   default = "Z33AYJ8TM3BH4J" # this is for us-gov-west-1. See others here: https://docs.aws.amazon.com/general/latest/gr/elb.html
# }

# variable "nlb_zone_id" {
#   default = "ZMG1MZ2THAWF1" # this is for us-gov-west-1. See others here: https://docs.aws.amazon.com/general/latest/gr/elb.html
# }

# variable domain {
#   type = string
#   description = "The root domain of the Cloud Foundry installation. The api and apps subdomains will be created using this domain. Example: westa.cloud.gov"
# }

# variable remote_state_bucket {
#   type = string 
# }

# variable remote_state_region {
#   type = string
# }

# variable remote_stack_name {
#   type = string
# }

variable "stack_description" {
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-gov-west-1a", "us-gov-west-1b"]
}

variable "aws_default_region" {
  default = "us-gov-west-1"
}

variable "public_cidrs" {
  type    = list(string)
  default = ["10.0.100.0/24", "10.0.101.0/24"]
}

variable "private_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "restricted_ingress_web_cidrs" {
  type    = list(string)
  default = ["127.0.0.1/32"]
}

variable "restricted_ingress_web_ipv6_cidrs" {
  type    = list(string)
  default = []
}

variable "nat_gateway_instance_type" {
  default = "c3.2xlarge"
}

variable "monitoring_security_group_cidrs" {
  type    = list(string)
  default = []
}

variable "concourse_security_group_cidrs" {
  type    = list(string)
  default = []
}

variable "bosh_default_ssh_public_key" {

}

variable "s3_gateway_policy_accounts" {
  type    = list(string)
  default = []
}

variable "tcp_lb_count" {
  default = 0
}

variable "listeners_per_tcp_lb" {
  default = 10
}

variable "tcp_first_port" {
  default = 10000
}

variable "tcp_allow_cidrs_ipv4" {
  default = ["0.0.0.0/0"]
}
variable "tcp_allow_cidrs_ipv6" {
  default = ["::/0"]
}

variable "services_cidr_1" {
  default = "10.0.3.0/24"
}

variable "services_cidr_2" {
  default = "10.0.4.0/24"
}

variable "ingress_cidrs" {
  type    = list(string)
  default = ["0.0.0.0"]
}