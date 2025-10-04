variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
}

variable "instance_root_device_size" {
  description = "Root device size for the instance in GB"
  type        = number
  default     = 20
}

variable "subnets" {
  type        = list(string)
  description = "valid subnets to assign to server"
}

variable "security_groups" {
  type        = list(string)
  description = "security groups to assign to server"
  default     = []
}

variable "ssh_public_key" {
  description = "SSH public key to access the instances"
  type        = string
}

variable "create_elastic_ip" {
  type        = bool
  description = "create an EIP for the ec2 instances"
  default     = true
}

variable "website_domain" {
  description = "Domain name for the website"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone id for website domain."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default = {
    Project     = "internship-app"
    Role        = "code-runner"
    Environment = "production"
  }
}
