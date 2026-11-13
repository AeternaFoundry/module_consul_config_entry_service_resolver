output "config_entry_service_resolvers_id" {
  description = "Map of id values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.id }
}
output "config_entry_service_resolvers_connect_timeout" {
  description = "Map of connect_timeout values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.connect_timeout }
}
output "config_entry_service_resolvers_default_subset" {
  description = "Map of default_subset values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.default_subset }
}
output "config_entry_service_resolvers_failover" {
  description = "Map of failover values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.failover }
}
output "config_entry_service_resolvers_load_balancer" {
  description = "Map of load_balancer values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.load_balancer }
}
output "config_entry_service_resolvers_meta" {
  description = "Map of meta values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.meta }
}
output "config_entry_service_resolvers_name" {
  description = "Map of name values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.name }
}
output "config_entry_service_resolvers_namespace" {
  description = "Map of namespace values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.namespace }
}
output "config_entry_service_resolvers_partition" {
  description = "Map of partition values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.partition }
}
output "config_entry_service_resolvers_redirect" {
  description = "Map of redirect values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.redirect }
}
output "config_entry_service_resolvers_request_timeout" {
  description = "Map of request_timeout values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.request_timeout }
}
output "config_entry_service_resolvers_subsets" {
  description = "Map of subsets values across all config_entry_service_resolvers, keyed the same as var.config_entry_service_resolvers"
  value       = { for k, v in consul_config_entry_service_resolver.config_entry_service_resolvers : k => v.subsets }
}

