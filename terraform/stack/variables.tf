variable "remote_state_bucket" {
}

variable "tooling_stack_name" {
}

variable "iaas_stack_name" {
}

variable "remote_state_bucket_external" {
  type = string
}

variable "external_remote_state_reader_access_key_id" {
  type        = string
  description = "Access key ID for the IAM user that has permission to read from the state bucket."
}

variable "external_remote_state_reader_secret_access_key" {
  type        = string
  sensitive   = true
  description = "Secret access key for the IAM user that has permission to read from the state bucket."
}

variable "external_stack_name" {
  type = string
}

variable "domain_name" {
}

variable "csb_aws_region_govcloud" {
  type = string
}

variable "csb_aws_region_commercial" {
  type = string
}

variable "csb_cg_smtp_aws_ses_zone" {
  type = string
}
