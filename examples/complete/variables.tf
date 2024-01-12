variable "cidr_block" {
  type = string
  default = "10.0.0.0/16" 
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {
    project = "roboshop"
    environment = "dev"
    terraform = "true"
  }
}

variable "vpc_tags" {
  type = map
  default = {

  }
}

variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "igw" {
  type = map
  default = {
    Name = "roboshop"
  }
}

variable "public_subnets_cidr" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnets_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}
variable "is_peering_required" {
  type = bool
  default = true
}