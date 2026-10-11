output "vrack_ipv6s_id" {
  description = "Map of id values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no id are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vrack_ipv6s_block" {
  description = "Map of block values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no block are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => v.block if v.block != null && length(v.block) > 0 }
}
output "vrack_ipv6s_bridged_subrange" {
  description = "Map of bridged_subrange values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no bridged_subrange are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => one(v.bridged_subrange) if v.bridged_subrange != null && length(v.bridged_subrange) > 0 }
}
output "vrack_ipv6s_ipv6" {
  description = "Map of ipv6 values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no ipv6 are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => v.ipv6 if v.ipv6 != null && length(v.ipv6) > 0 }
}
output "vrack_ipv6s_region" {
  description = "Map of region values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no region are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vrack_ipv6s_service_name" {
  description = "Map of service_name values across all vrack_ipv6s, keyed the same as var.vrack_ipv6s except keys with no service_name are omitted"
  value       = { for k, v in ovh_vrack_ipv6.vrack_ipv6s : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

