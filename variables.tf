variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = ""
}



variable "cidr" {
  description = "The CIDR block for the VPC"
  default     = "192.168.1.0/16"
}



variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
  type = "map"
}
