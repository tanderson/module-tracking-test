variable "tmp" {
  type = string
  default = "2"
}

module "mod2" {
  source = "../mod1"
  tmp = var.tmp
}

