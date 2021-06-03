output "resource_group_name" {
    value       = rg.name
    description = "resource group where linux container agent are deployed"
}
output "linux_container_group_name" {
  value       = "${module.aci-devops-agent.linux_agents_names[0]}"
  description = "name of the first Linux container group"
}
module "aci-devops-agent" {
    source = "modules/aci-devops-agent"
}