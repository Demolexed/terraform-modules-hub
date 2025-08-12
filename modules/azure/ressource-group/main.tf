variable "name" {
  description = "Ressource group's name"
  type        = string
}

variable "location" {
  description = "Ressource group's Azure region"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Ressource group's tags"
  type        = map(string)
  default     = {}
}
