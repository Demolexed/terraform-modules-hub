variable "resource_group_name" {
  type = object({
    name     = string
    location = string
  })
}

variable "name" {
  description = "Virtual network's name"
  type        = string
}

variable "tags" {
  description = "Virtual network's tags"
  type        = map(string)
  default     = {}
}

variable "virtual_network" {
  type = object({
    name                     = string
    address_space            = list(string)
    dns_servers              = list(string)
    subnet                   = list(object({
      name             = string
      address_prefixes = list(string)
    }))
  })
  description = "Virtual Network properties"
}