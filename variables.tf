variable "redis_cache_name" {
  description = "The name of the redis cache."
}

variable "redis_cache_resource_group_name" {
  description = "The resource group name of the redis cache."
}

variable "redis_cache_location" {
  description = "The location of the redis cache."
}

variable "redis_cache_capacity" {
  description = "Redis cache capacity."
}

variable "redis_cache_family" {
  description = "Redis cache family."
}

variable "redis_cache_sku_name" {
  description = "Redis cache sku name."
}

variable "redis_cache_enable_non_ssl_port" {
  description = "Redis cache option to enable non ssl port or not. The default value is false"
  default     = "false"
}

variable "redis_cache_maxmemory_policy" {
  description = "Redis cache max memory policy."
  default     = "allkeys-lru"
}

variable "redis_cache_maxmemory_reserved" {
  description = "Redis cache max memory reserved."
  default     = "214"
}

variable "redis_cache_maxmemory_delta" {
  description = "Redis cache max memory delta."
  default     = "214"
}

variable "has_redis_cache_georeplication" {
  description = "If true, the module will enable the geo replication between regions."
  default     = "false"
}

variable "redis_cache_replication_role" {
  description = "Redis cache replication role. The value of this variable must be Primary or Secondary."
  default     = "Primary"
}

variable "redis_cache_georeplication_name" {
  default     = null
  description = "The name of the geo replication redis cache."
}
