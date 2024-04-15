variable "address_space_start_ip" {
  type        = string
  description = "The address space that is used the virtual network"
}

variable "address_space_size" {
  type        = number
  description = "The address space that is used the virtual network"
}

variable "subnets_and_sizes" {
  type        = map(number)
  description = "The size of the subnets"
}

variable "postfix" {
  type        = string
  description = "The postfix to append to the resource names"
}

variable "location" {
  type        = string
  description = "The location of the resources"
}