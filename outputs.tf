output "config_entry_service_resolvers_id" {
  description = "Map of id values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no id are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_entry_service_resolvers_connect_timeout" {
  description = "Map of connect_timeout values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no connect_timeout are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.connect_timeout if v.connect_timeout != null && length(v.connect_timeout) > 0 }
}
output "config_entry_service_resolvers_default_subset" {
  description = "Map of default_subset values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no default_subset are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.default_subset if v.default_subset != null && length(v.default_subset) > 0 }
}
output "config_entry_service_resolvers_failover" {
  description = "Map of failover values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no failover are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.failover if v.failover != null && length(v.failover) > 0 }
}
output "config_entry_service_resolvers_load_balancer" {
  description = "Map of load_balancer values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no load_balancer are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.load_balancer if v.load_balancer != null && length(v.load_balancer) > 0 }
}
output "config_entry_service_resolvers_meta" {
  description = "Map of meta values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no meta are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "config_entry_service_resolvers_name" {
  description = "Map of name values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no name are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_entry_service_resolvers_namespace" {
  description = "Map of namespace values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no namespace are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "config_entry_service_resolvers_partition" {
  description = "Map of partition values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no partition are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "config_entry_service_resolvers_redirect" {
  description = "Map of redirect values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no redirect are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.redirect if v.redirect != null && length(v.redirect) > 0 }
}
output "config_entry_service_resolvers_request_timeout" {
  description = "Map of request_timeout values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no request_timeout are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.request_timeout if v.request_timeout != null && length(v.request_timeout) > 0 }
}
output "config_entry_service_resolvers_subsets" {
  description = "Map of subsets values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers except keys with no subsets are omitted"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.subsets if v.subsets != null && length(v.subsets) > 0 }
}

