module "names-container" {
  version              = "~> 3.0"
  source               = "tfe.teck.dev/TeckResourcesTDS/names/azurerm"
  for_each             = toset(local.containers)
  resource_location    = local.location
  resource_environment = var.project.environment.name
  resource_name        = format("%s-%s", var.project.name, each.value)
}
