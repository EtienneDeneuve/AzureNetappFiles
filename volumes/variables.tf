variable "subnet" {
  type = object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
  })

}

variable "anf-account" {
  type = object({
    account_name        = string
    resource_group_name = string
  })
}

variable "anf-pool" {
  type = object({
    name          = string
    service_level = string
    size          = number
  })

}

variable "anf-volume" {
  type = object({
    name = string
    size = number

    type = any
  })

}
