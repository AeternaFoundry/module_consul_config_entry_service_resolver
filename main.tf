resource "consul_config_entry_service_resolver" "config_entry_service_resolvers" {
  for_each = var.config_entry_service_resolvers

  name            = each.value.name
  connect_timeout = each.value.connect_timeout
  default_subset  = each.value.default_subset
  meta            = each.value.meta
  namespace       = each.value.namespace
  partition       = each.value.partition
  request_timeout = each.value.request_timeout

  dynamic "failover" {
    for_each = each.value.failover != null ? each.value.failover : []
    content {
      datacenters    = failover.value.datacenters
      namespace      = failover.value.namespace
      sameness_group = failover.value.sameness_group
      service        = failover.value.service
      service_subset = failover.value.service_subset
      subset_name    = failover.value.subset_name
      dynamic "targets" {
        for_each = failover.value.targets != null ? failover.value.targets : []
        content {
          datacenter     = targets.value.datacenter
          namespace      = targets.value.namespace
          partition      = targets.value.partition
          peer           = targets.value.peer
          service        = targets.value.service
          service_subset = targets.value.service_subset
        }
      }
    }
  }

  dynamic "load_balancer" {
    for_each = each.value.load_balancer != null ? each.value.load_balancer : []
    content {
      dynamic "hash_policies" {
        for_each = load_balancer.value.hash_policies != null ? load_balancer.value.hash_policies : []
        content {
          dynamic "cookie_config" {
            for_each = hash_policies.value.cookie_config != null ? hash_policies.value.cookie_config : []
            content {
              path    = cookie_config.value.path
              session = cookie_config.value.session
              ttl     = cookie_config.value.ttl
            }
          }
          field       = hash_policies.value.field
          field_value = hash_policies.value.field_value
          source_ip   = hash_policies.value.source_ip
          terminal    = hash_policies.value.terminal
        }
      }
      dynamic "least_request_config" {
        for_each = load_balancer.value.least_request_config != null ? load_balancer.value.least_request_config : []
        content {
          choice_count = least_request_config.value.choice_count
        }
      }
      policy = load_balancer.value.policy
      dynamic "ring_hash_config" {
        for_each = load_balancer.value.ring_hash_config != null ? load_balancer.value.ring_hash_config : []
        content {
          maximum_ring_size = ring_hash_config.value.maximum_ring_size
          minimum_ring_size = ring_hash_config.value.minimum_ring_size
        }
      }
    }
  }

  dynamic "redirect" {
    for_each = each.value.redirect != null ? each.value.redirect : []
    content {
      datacenter     = redirect.value.datacenter
      namespace      = redirect.value.namespace
      partition      = redirect.value.partition
      peer           = redirect.value.peer
      sameness_group = redirect.value.sameness_group
      service        = redirect.value.service
      service_subset = redirect.value.service_subset
    }
  }

  dynamic "subsets" {
    for_each = each.value.subsets != null ? each.value.subsets : []
    content {
      filter       = subsets.value.filter
      name         = subsets.value.name
      only_passing = subsets.value.only_passing
    }
  }
}

