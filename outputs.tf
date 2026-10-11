output "acl_roles_id" {
  description = "Map of id values across all acl_roles, keyed the same as var.acl_roles except keys with no id are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "acl_roles_description" {
  description = "Map of description values across all acl_roles, keyed the same as var.acl_roles except keys with no description are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "acl_roles_name" {
  description = "Map of name values across all acl_roles, keyed the same as var.acl_roles except keys with no name are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "acl_roles_namespace" {
  description = "Map of namespace values across all acl_roles, keyed the same as var.acl_roles except keys with no namespace are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "acl_roles_node_identities" {
  description = "Map of node_identities values across all acl_roles, keyed the same as var.acl_roles except keys with no node_identities are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.node_identities if v.node_identities != null && length(v.node_identities) > 0 }
}
output "acl_roles_partition" {
  description = "Map of partition values across all acl_roles, keyed the same as var.acl_roles except keys with no partition are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "acl_roles_policies" {
  description = "Map of policies values across all acl_roles, keyed the same as var.acl_roles except keys with no policies are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "acl_roles_service_identities" {
  description = "Map of service_identities values across all acl_roles, keyed the same as var.acl_roles except keys with no service_identities are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.service_identities if v.service_identities != null && length(v.service_identities) > 0 }
}
output "acl_roles_templated_policies" {
  description = "Map of templated_policies values across all acl_roles, keyed the same as var.acl_roles except keys with no templated_policies are omitted"
  value       = { for k, v in consul_acl_role.acl_roles : k => v.templated_policies if v.templated_policies != null && length(v.templated_policies) > 0 }
}

