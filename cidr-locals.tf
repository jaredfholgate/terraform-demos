locals {
  virtual_network_address_space = "${var.address_space_start_ip}/${var.address_space_size}"
  subnet_keys                   = keys(var.subnets_and_sizes)
  subnet_new_bits               = [for size in values(var.subnets_and_sizes) : size - var.address_space_size]
  cidr_subnets                  = cidrsubnets(local.virtual_network_address_space, local.subnet_new_bits...)
  subnets                       = { for key, value in var.subnets_and_sizes : key => local.cidr_subnets[index(local.subnet_keys, key)] }
}