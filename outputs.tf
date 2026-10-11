output "proxy_protocol_policies_id" {
  description = "Map of id values across all proxy_protocol_policies, keyed the same as var.proxy_protocol_policies"
  value       = { for k, v in aws_proxy_protocol_policy.proxy_protocol_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "proxy_protocol_policies_instance_ports" {
  description = "Map of instance_ports values across all proxy_protocol_policies, keyed the same as var.proxy_protocol_policies"
  value       = { for k, v in aws_proxy_protocol_policy.proxy_protocol_policies : k => v.instance_ports if v.instance_ports != null && length(v.instance_ports) > 0 }
}
output "proxy_protocol_policies_load_balancer" {
  description = "Map of load_balancer values across all proxy_protocol_policies, keyed the same as var.proxy_protocol_policies"
  value       = { for k, v in aws_proxy_protocol_policy.proxy_protocol_policies : k => v.load_balancer if v.load_balancer != null && length(v.load_balancer) > 0 }
}
output "proxy_protocol_policies_region" {
  description = "Map of region values across all proxy_protocol_policies, keyed the same as var.proxy_protocol_policies"
  value       = { for k, v in aws_proxy_protocol_policy.proxy_protocol_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

