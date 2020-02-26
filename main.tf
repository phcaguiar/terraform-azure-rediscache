resource "azurerm_redis_cache" "redis_cache" {
  name                = var.redis_cache_name
  location            = var.redis_cache_location
  resource_group_name = var.redis_cache_resource_group_name
  capacity            = var.redis_cache_capacity
  family              = var.redis_cache_family
  sku_name            = var.redis_cache_sku_name
  enable_non_ssl_port = var.redis_cache_enable_non_ssl_port

  redis_configuration {
    maxmemory_policy   = var.redis_cache_maxmemory_policy
    maxmemory_reserved = var.redis_cache_maxmemory_reserved
    maxmemory_delta    = var.redis_cache_maxmemory_delta
  }
}

resource "null_resource" "redis_cache_georeplication" {
  count         = var.has_redis_cache_georeplication ? 1 : 0

  provisioner "local-exec" {
    command     = "az redis server-link create --name ${var.redis_cache_name} --replication-role ${var.redis_cache_replication_role} --resource-group ${var.redis_cache_resource_group_name} --server-to-link ${var.redis_cache_georeplication_name}"
  }

  depends_on    = [azurerm_redis_cache.redis_cache]
}