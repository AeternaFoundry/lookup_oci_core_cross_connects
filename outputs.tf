output "core_cross_connects_lookup_id" {
  description = "Map of id values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_cross_connects_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_cross_connects_lookup_cross_connect_group_id" {
  description = "Map of cross_connect_group_id values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no cross_connect_group_id are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.cross_connect_group_id if v.cross_connect_group_id != null && length(v.cross_connect_group_id) > 0 }
}
output "core_cross_connects_lookup_cross_connects" {
  description = "Map of cross_connects values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no cross_connects are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.cross_connects if v.cross_connects != null && length(v.cross_connects) > 0 }
}
output "core_cross_connects_lookup_display_name" {
  description = "Map of display_name values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_cross_connects_lookup_filter" {
  description = "Map of filter values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_cross_connects_lookup_state" {
  description = "Map of state values across all core_cross_connects_lookup, keyed the same as var.core_cross_connects_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_core_cross_connects.core_cross_connects_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

