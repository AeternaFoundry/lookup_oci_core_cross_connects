data "oci_core_cross_connects" "core_cross_connects_lookup" {
  for_each = var.core_cross_connects_lookup

  compartment_id         = each.value.compartment_id
  cross_connect_group_id = each.value.cross_connect_group_id
  display_name           = each.value.display_name
  state                  = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

