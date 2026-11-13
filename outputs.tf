output "acl_roles_id" {
  description = "Map of id values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.id }
}
output "acl_roles_description" {
  description = "Map of description values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.description }
}
output "acl_roles_name" {
  description = "Map of name values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.name }
}
output "acl_roles_namespace" {
  description = "Map of namespace values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.namespace }
}
output "acl_roles_node_identities" {
  description = "Map of node_identities values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.node_identities }
}
output "acl_roles_partition" {
  description = "Map of partition values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.partition }
}
output "acl_roles_policies" {
  description = "Map of policies values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.policies }
}
output "acl_roles_service_identities" {
  description = "Map of service_identities values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.service_identities }
}
output "acl_roles_templated_policies" {
  description = "Map of templated_policies values across all acl_roles, keyed the same as var.acl_roles"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.templated_policies }
}

