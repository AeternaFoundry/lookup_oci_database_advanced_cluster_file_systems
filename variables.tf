variable "database_advanced_cluster_file_systems_lookup" {
  description = <<EOT
Map of database_advanced_cluster_file_systems_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - resource_id
    - state
    - vm_cluster_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    name           = optional(string)
    resource_id    = optional(string)
    state          = optional(string)
    vm_cluster_id  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

