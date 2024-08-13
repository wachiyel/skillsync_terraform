// Elastic Load Balancer
variable "alb_name" {
  default = "bootcamp-prod"
}

// database 
variable "allow_major_version_upgrade" {
  default = true
}

variable "storage_type" {
  description = "storage type"
  default     = "gp3"
}

variable "apply_immediately" {
  default = "true"
}

variable "deletion_protection" {
  default = false
}