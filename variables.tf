variable "core_cross_connects_lookup" {
  description = <<EOT
Map of core_cross_connects_lookup, attributes below
Required:
    - compartment_id
Optional:
    - cross_connect_group_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id         = string
    cross_connect_group_id = optional(string)
    display_name           = optional(string)
    state                  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

