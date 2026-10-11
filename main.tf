data "oci_database_advanced_cluster_file_systems" "database_advanced_cluster_file_systems_lookup" {
  for_each = var.database_advanced_cluster_file_systems_lookup

  compartment_id = each.value.compartment_id
  name           = each.value.name
  resource_id    = each.value.resource_id
  state          = each.value.state
  vm_cluster_id  = each.value.vm_cluster_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

