
variable "module_dependency_ignore" {
  type = map(string)
	default = {
    name_of_module = "reason"
    mod1 = "deprecating after refactor"
  }
}

variable "sentinel_policy_ignore" {
  type = map(string)
  default = {
    name_of_policy = "reason"
  }
}

module "mod1" {
  source = "./mod1"
  tmp = "test1"
}

module "mod2" {
  source = "./mod2"
  tmp = "test2"
}

