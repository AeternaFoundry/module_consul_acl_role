variable "acl_roles" {
  description = <<EOT
Map of acl_roles, attributes below
Required:
    - name
Optional:
    - description
    - namespace
    - partition
    - policies
    - node_identities (block):
        - datacenter (required)
        - node_name (required)
    - service_identities (block):
        - datacenters (optional)
        - service_name (required)
    - templated_policies (block):
        - datacenters (optional)
        - template_name (required)
        - template_variables (optional, block):
            - name (optional)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    namespace   = optional(string)
    partition   = optional(string)
    policies    = optional(set(string))
    node_identities = optional(list(object({
      datacenter = string
      node_name  = string
    })))
    service_identities = optional(list(object({
      datacenters  = optional(set(string))
      service_name = string
    })))
    templated_policies = optional(list(object({
      datacenters   = optional(list(string))
      template_name = string
      template_variables = optional(object({
        name = optional(string)
      }))
    })))
  }))
}

