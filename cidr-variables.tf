variable "address_space_start_ip" {
  type        = string
  description = "The address space that is used the virtual network"
  default     = "10.36.0.0"
}

variable "address_space_size" {
  type        = number
  description = "The address space that is used the virtual network"
  default     = 18
}

variable "subnets_and_sizes" {
  type        = map(number)
  description = "The size of the subnets"
  default = {
    "a" = 23
    "b" = 23
    "c" = 23
  }
}