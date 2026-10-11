resource "ovh_vrack_ipv6" "vrack_ipv6s" {
  for_each = var.vrack_ipv6s

  block        = each.value.block
  service_name = each.value.service_name

  dynamic "bridged_subrange" {
    for_each = each.value.bridged_subrange != null ? [each.value.bridged_subrange] : []
    content {
      slaac = bridged_subrange.value.slaac
    }
  }
}

