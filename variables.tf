variable "config_entry_service_resolvers" {
  description = <<EOT
Map of config_entry_service_resolvers, attributes below
Required:
    - name
Optional:
    - connect_timeout
    - default_subset
    - meta
    - namespace
    - partition
    - request_timeout
    - failover (block):
        - datacenters (optional)
        - namespace (optional)
        - sameness_group (optional)
        - service (optional)
        - service_subset (optional)
        - subset_name (required)
        - targets (optional, block):
            - datacenter (optional)
            - namespace (optional)
            - partition (optional)
            - peer (optional)
            - service (optional)
            - service_subset (optional)
    - load_balancer (block):
        - hash_policies (optional, block):
            - cookie_config (optional, block):
                - path (optional)
                - session (optional)
                - ttl (optional)
            - field (optional)
            - field_value (optional)
            - source_ip (optional)
            - terminal (optional)
        - least_request_config (optional, block):
            - choice_count (optional)
        - policy (optional)
        - ring_hash_config (optional, block):
            - maximum_ring_size (optional)
            - minimum_ring_size (optional)
    - redirect (block):
        - datacenter (optional)
        - namespace (optional)
        - partition (optional)
        - peer (optional)
        - sameness_group (optional)
        - service (optional)
        - service_subset (optional)
    - subsets (block):
        - filter (required)
        - name (required)
        - only_passing (required)
EOT

  type = map(object({
    name            = string
    connect_timeout = optional(string)
    default_subset  = optional(string)
    meta            = optional(map(string))
    namespace       = optional(string)
    partition       = optional(string)
    request_timeout = optional(string)
    failover = optional(list(object({
      datacenters    = optional(list(string))
      namespace      = optional(string)
      sameness_group = optional(string)
      service        = optional(string)
      service_subset = optional(string)
      subset_name    = string
      targets = optional(list(object({
        datacenter     = optional(string)
        namespace      = optional(string)
        partition      = optional(string)
        peer           = optional(string)
        service        = optional(string)
        service_subset = optional(string)
      })))
    })))
    load_balancer = optional(list(object({
      hash_policies = optional(list(object({
        cookie_config = optional(list(object({
          path    = optional(string)
          session = optional(bool)
          ttl     = optional(string)
        })))
        field       = optional(string)
        field_value = optional(string)
        source_ip   = optional(bool)
        terminal    = optional(bool)
      })))
      least_request_config = optional(list(object({
        choice_count = optional(number)
      })))
      policy = optional(string)
      ring_hash_config = optional(list(object({
        maximum_ring_size = optional(number)
        minimum_ring_size = optional(number)
      })))
    })))
    redirect = optional(list(object({
      datacenter     = optional(string)
      namespace      = optional(string)
      partition      = optional(string)
      peer           = optional(string)
      sameness_group = optional(string)
      service        = optional(string)
      service_subset = optional(string)
    })))
    subsets = optional(list(object({
      filter       = string
      name         = string
      only_passing = bool
    })))
  }))
}

