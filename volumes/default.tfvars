subnet = {
  name                 = "ANF"
  virtual_network_name = "eu-west-hub-01"
  resource_group_name  = "rg-sponsored-csa-west-europe"
}

anf-account = {
  account_name        = "anf-eu-west"
  resource_group_name = "rg-sponsored-csa-west-europe-anf"
}

anf-pool = {
  name          = "etienneTF"
  service_level = "Standard"
  size          = 4
}

anf-volume = {
  name = "random"
  size = 100
  type = ["CIFS"]
}