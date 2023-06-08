###############################################
#    AWS REGION                               #
###############################################
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "US East1 (Virginia)"
}

###############################################
#    AWS VPC CIDR                             #
###############################################
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = ""
}

###############################################
#    AWS SUBNET #1 IP SUBNET                  #
###############################################
variable "subnet01" {
  type        = string
  default     = "10.0.1.0/24"
  description = "A public network"
}

###############################################
#    AWS AVAILABILITY ZONE                  #
###############################################
variable "availability_zone01" {
  type        = string
  default     = "us-east-1a"
  description = "US East1 (Virginia)"
}

###############################################
#    EBS AVAILABILITY ZONE                    #
###############################################
variable "subnet_availability_id1" {
  type    = string
  default = ""
}

###############################################
#    AWS IMAGE                                #
###############################################
variable "aws_amis" {
  type    = string
  default = "ami-0022f774911c1d690"
}

###############################################
#    AWS INSTANCE TYPE                        #
###############################################
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

###############################################
#    EBS DEVICE NAME                          #
###############################################
variable "ebs_device_name" {
  type    = string
  default = "/dev/sdh"
}

###############################################
#    EC2 SSH PUBLIC KEY                       #
###############################################
variable "ssh_public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCaxeGjAQRWCh/+u+qW8AfZWXGJw6IWNSlpq7NX5JR7VPJIY6XR0VCMPYTZOP9BWwdBrxXk3hVyrPvXpMUGHJdxXvFejOjfzamr0tTUyKUdhi81YFZv6JywRZtohOT5JEkD8CWKxTfI+vugWg4jXTPimVJfsg3KmA68BNwH4CmOPaIcGZGlehd7iUtIm2/oHLiWC22Ce/XrHxglzH1akwd0PtrmO3GXQDJ8qjXOooPzHCvnBsNNzeBWBDB1qXqijoZFdEviZRrS8EU7GgVxAM8Le9ywdlvZMVR2lwJMb+SUjJENrT1F21zSggaqKOQcnhlrJh7eRP+V/Myh7C2Jzobf"
}
