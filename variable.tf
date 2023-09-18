# rsg variables

variable "resource_group" {
  type = string

}

variable "location" {
  type = string

}

# Vnet Variables

variable "address_space" {
  type = list(string)

}

variable "vnet" {
  type = string

}
