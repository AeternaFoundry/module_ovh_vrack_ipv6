variable "vrack_ipv6s" {
  description = <<EOT
Map of vrack_ipv6s, attributes below
Required:
    - block
    - service_name
Optional:
    - bridged_subrange (block):
        - slaac (required)
EOT

  type = map(object({
    block        = string
    service_name = string
    bridged_subrange = optional(object({
      slaac = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

