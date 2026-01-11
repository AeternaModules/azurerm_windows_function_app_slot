resource "azurerm_windows_function_app_slot" "windows_function_app_slots" {
  for_each = var.windows_function_app_slots

  function_app_id                                = each.value.function_app_id
  name                                           = each.value.name
  virtual_network_subnet_id                      = each.value.virtual_network_subnet_id
  virtual_network_backup_restore_enabled         = each.value.virtual_network_backup_restore_enabled
  tags                                           = each.value.tags
  storage_uses_managed_identity                  = each.value.storage_uses_managed_identity
  storage_key_vault_secret_id                    = each.value.storage_key_vault_secret_id
  storage_account_name                           = each.value.storage_account_name
  storage_account_access_key                     = each.value.storage_account_access_key
  service_plan_id                                = each.value.service_plan_id
  public_network_access_enabled                  = each.value.public_network_access_enabled
  key_vault_reference_identity_id                = each.value.key_vault_reference_identity_id
  https_only                                     = each.value.https_only
  functions_extension_version                    = each.value.functions_extension_version
  ftp_publish_basic_authentication_enabled       = each.value.ftp_publish_basic_authentication_enabled
  enabled                                        = each.value.enabled
  daily_memory_time_quota                        = each.value.daily_memory_time_quota
  content_share_force_disabled                   = each.value.content_share_force_disabled
  client_certificate_mode                        = each.value.client_certificate_mode
  client_certificate_exclusion_paths             = each.value.client_certificate_exclusion_paths
  client_certificate_enabled                     = each.value.client_certificate_enabled
  builtin_logging_enabled                        = each.value.builtin_logging_enabled
  app_settings                                   = each.value.app_settings
  vnet_image_pull_enabled                        = each.value.vnet_image_pull_enabled
  webdeploy_publish_basic_authentication_enabled = each.value.webdeploy_publish_basic_authentication_enabled

  site_config {
    always_on             = each.value.site_config.always_on
    api_definition_url    = each.value.site_config.api_definition_url
    api_management_api_id = each.value.site_config.api_management_api_id
    app_command_line      = each.value.site_config.app_command_line
    app_scale_limit       = each.value.site_config.app_scale_limit
    dynamic "app_service_logs" {
      for_each = each.value.site_config.app_service_logs != null ? [each.value.site_config.app_service_logs] : []
      content {
        disk_quota_mb         = app_service_logs.value.disk_quota_mb
        retention_period_days = app_service_logs.value.retention_period_days
      }
    }
    application_insights_connection_string = each.value.site_config.application_insights_connection_string
    application_insights_key               = each.value.site_config.application_insights_key
    dynamic "application_stack" {
      for_each = each.value.site_config.application_stack != null ? [each.value.site_config.application_stack] : []
      content {
        dotnet_version              = application_stack.value.dotnet_version
        java_version                = application_stack.value.java_version
        node_version                = application_stack.value.node_version
        powershell_core_version     = application_stack.value.powershell_core_version
        use_custom_runtime          = application_stack.value.use_custom_runtime
        use_dotnet_isolated_runtime = application_stack.value.use_dotnet_isolated_runtime
      }
    }
    auto_swap_slot_name = each.value.site_config.auto_swap_slot_name
    dynamic "cors" {
      for_each = each.value.site_config.cors != null ? [each.value.site_config.cors] : []
      content {
        allowed_origins     = cors.value.allowed_origins
        support_credentials = cors.value.support_credentials
      }
    }
    default_documents                 = each.value.site_config.default_documents
    elastic_instance_minimum          = each.value.site_config.elastic_instance_minimum
    ftps_state                        = each.value.site_config.ftps_state
    health_check_eviction_time_in_min = each.value.site_config.health_check_eviction_time_in_min
    health_check_path                 = each.value.site_config.health_check_path
    http2_enabled                     = each.value.site_config.http2_enabled
    dynamic "ip_restriction" {
      for_each = each.value.site_config.ip_restriction != null ? [each.value.site_config.ip_restriction] : []
      content {
        action      = ip_restriction.value.action
        description = ip_restriction.value.description
        dynamic "headers" {
          for_each = ip_restriction.value.headers != null ? [ip_restriction.value.headers] : []
          content {
            x_azure_fdid      = headers.value.x_azure_fdid
            x_fd_health_probe = headers.value.x_fd_health_probe
            x_forwarded_for   = headers.value.x_forwarded_for
            x_forwarded_host  = headers.value.x_forwarded_host
          }
        }
        ip_address                = ip_restriction.value.ip_address
        name                      = ip_restriction.value.name
        priority                  = ip_restriction.value.priority
        service_tag               = ip_restriction.value.service_tag
        virtual_network_subnet_id = ip_restriction.value.virtual_network_subnet_id
      }
    }
    ip_restriction_default_action    = each.value.site_config.ip_restriction_default_action
    load_balancing_mode              = each.value.site_config.load_balancing_mode
    managed_pipeline_mode            = each.value.site_config.managed_pipeline_mode
    minimum_tls_version              = each.value.site_config.minimum_tls_version
    pre_warmed_instance_count        = each.value.site_config.pre_warmed_instance_count
    remote_debugging_enabled         = each.value.site_config.remote_debugging_enabled
    remote_debugging_version         = each.value.site_config.remote_debugging_version
    runtime_scale_monitoring_enabled = each.value.site_config.runtime_scale_monitoring_enabled
    dynamic "scm_ip_restriction" {
      for_each = each.value.site_config.scm_ip_restriction != null ? [each.value.site_config.scm_ip_restriction] : []
      content {
        action      = scm_ip_restriction.value.action
        description = scm_ip_restriction.value.description
        dynamic "headers" {
          for_each = scm_ip_restriction.value.headers != null ? [scm_ip_restriction.value.headers] : []
          content {
            x_azure_fdid      = headers.value.x_azure_fdid
            x_fd_health_probe = headers.value.x_fd_health_probe
            x_forwarded_for   = headers.value.x_forwarded_for
            x_forwarded_host  = headers.value.x_forwarded_host
          }
        }
        ip_address                = scm_ip_restriction.value.ip_address
        name                      = scm_ip_restriction.value.name
        priority                  = scm_ip_restriction.value.priority
        service_tag               = scm_ip_restriction.value.service_tag
        virtual_network_subnet_id = scm_ip_restriction.value.virtual_network_subnet_id
      }
    }
    scm_ip_restriction_default_action = each.value.site_config.scm_ip_restriction_default_action
    scm_minimum_tls_version           = each.value.site_config.scm_minimum_tls_version
    scm_use_main_ip_restriction       = each.value.site_config.scm_use_main_ip_restriction
    use_32_bit_worker                 = each.value.site_config.use_32_bit_worker
    vnet_route_all_enabled            = each.value.site_config.vnet_route_all_enabled
    websockets_enabled                = each.value.site_config.websockets_enabled
    worker_count                      = each.value.site_config.worker_count
  }

  dynamic "auth_settings" {
    for_each = each.value.auth_settings != null ? [each.value.auth_settings] : []
    content {
      dynamic "active_directory" {
        for_each = auth_settings.value.active_directory != null ? [auth_settings.value.active_directory] : []
        content {
          allowed_audiences          = active_directory.value.allowed_audiences
          client_id                  = active_directory.value.client_id
          client_secret              = active_directory.value.client_secret
          client_secret_setting_name = active_directory.value.client_secret_setting_name
        }
      }
      additional_login_parameters    = auth_settings.value.additional_login_parameters
      allowed_external_redirect_urls = auth_settings.value.allowed_external_redirect_urls
      default_provider               = auth_settings.value.default_provider
      enabled                        = auth_settings.value.enabled
      dynamic "facebook" {
        for_each = auth_settings.value.facebook != null ? [auth_settings.value.facebook] : []
        content {
          app_id                  = facebook.value.app_id
          app_secret              = facebook.value.app_secret
          app_secret_setting_name = facebook.value.app_secret_setting_name
          oauth_scopes            = facebook.value.oauth_scopes
        }
      }
      dynamic "github" {
        for_each = auth_settings.value.github != null ? [auth_settings.value.github] : []
        content {
          client_id                  = github.value.client_id
          client_secret              = github.value.client_secret
          client_secret_setting_name = github.value.client_secret_setting_name
          oauth_scopes               = github.value.oauth_scopes
        }
      }
      dynamic "google" {
        for_each = auth_settings.value.google != null ? [auth_settings.value.google] : []
        content {
          client_id                  = google.value.client_id
          client_secret              = google.value.client_secret
          client_secret_setting_name = google.value.client_secret_setting_name
          oauth_scopes               = google.value.oauth_scopes
        }
      }
      issuer = auth_settings.value.issuer
      dynamic "microsoft" {
        for_each = auth_settings.value.microsoft != null ? [auth_settings.value.microsoft] : []
        content {
          client_id                  = microsoft.value.client_id
          client_secret              = microsoft.value.client_secret
          client_secret_setting_name = microsoft.value.client_secret_setting_name
          oauth_scopes               = microsoft.value.oauth_scopes
        }
      }
      runtime_version               = auth_settings.value.runtime_version
      token_refresh_extension_hours = auth_settings.value.token_refresh_extension_hours
      token_store_enabled           = auth_settings.value.token_store_enabled
      dynamic "twitter" {
        for_each = auth_settings.value.twitter != null ? [auth_settings.value.twitter] : []
        content {
          consumer_key                 = twitter.value.consumer_key
          consumer_secret              = twitter.value.consumer_secret
          consumer_secret_setting_name = twitter.value.consumer_secret_setting_name
        }
      }
      unauthenticated_client_action = auth_settings.value.unauthenticated_client_action
    }
  }

  dynamic "auth_settings_v2" {
    for_each = each.value.auth_settings_v2 != null ? [each.value.auth_settings_v2] : []
    content {
      dynamic "active_directory_v2" {
        for_each = auth_settings_v2.value.active_directory_v2 != null ? [auth_settings_v2.value.active_directory_v2] : []
        content {
          allowed_applications                 = active_directory_v2.value.allowed_applications
          allowed_audiences                    = active_directory_v2.value.allowed_audiences
          allowed_groups                       = active_directory_v2.value.allowed_groups
          allowed_identities                   = active_directory_v2.value.allowed_identities
          client_id                            = active_directory_v2.value.client_id
          client_secret_certificate_thumbprint = active_directory_v2.value.client_secret_certificate_thumbprint
          client_secret_setting_name           = active_directory_v2.value.client_secret_setting_name
          jwt_allowed_client_applications      = active_directory_v2.value.jwt_allowed_client_applications
          jwt_allowed_groups                   = active_directory_v2.value.jwt_allowed_groups
          login_parameters                     = active_directory_v2.value.login_parameters
          tenant_auth_endpoint                 = active_directory_v2.value.tenant_auth_endpoint
          www_authentication_disabled          = active_directory_v2.value.www_authentication_disabled
        }
      }
      dynamic "apple_v2" {
        for_each = auth_settings_v2.value.apple_v2 != null ? [auth_settings_v2.value.apple_v2] : []
        content {
          client_id                  = apple_v2.value.client_id
          client_secret_setting_name = apple_v2.value.client_secret_setting_name
        }
      }
      auth_enabled = auth_settings_v2.value.auth_enabled
      dynamic "azure_static_web_app_v2" {
        for_each = auth_settings_v2.value.azure_static_web_app_v2 != null ? [auth_settings_v2.value.azure_static_web_app_v2] : []
        content {
          client_id = azure_static_web_app_v2.value.client_id
        }
      }
      config_file_path = auth_settings_v2.value.config_file_path
      dynamic "custom_oidc_v2" {
        for_each = auth_settings_v2.value.custom_oidc_v2 != null ? [auth_settings_v2.value.custom_oidc_v2] : []
        content {
          client_id                     = custom_oidc_v2.value.client_id
          name                          = custom_oidc_v2.value.name
          name_claim_type               = custom_oidc_v2.value.name_claim_type
          openid_configuration_endpoint = custom_oidc_v2.value.openid_configuration_endpoint
          scopes                        = custom_oidc_v2.value.scopes
        }
      }
      default_provider = auth_settings_v2.value.default_provider
      excluded_paths   = auth_settings_v2.value.excluded_paths
      dynamic "facebook_v2" {
        for_each = auth_settings_v2.value.facebook_v2 != null ? [auth_settings_v2.value.facebook_v2] : []
        content {
          app_id                  = facebook_v2.value.app_id
          app_secret_setting_name = facebook_v2.value.app_secret_setting_name
          graph_api_version       = facebook_v2.value.graph_api_version
          login_scopes            = facebook_v2.value.login_scopes
        }
      }
      forward_proxy_convention                = auth_settings_v2.value.forward_proxy_convention
      forward_proxy_custom_host_header_name   = auth_settings_v2.value.forward_proxy_custom_host_header_name
      forward_proxy_custom_scheme_header_name = auth_settings_v2.value.forward_proxy_custom_scheme_header_name
      dynamic "github_v2" {
        for_each = auth_settings_v2.value.github_v2 != null ? [auth_settings_v2.value.github_v2] : []
        content {
          client_id                  = github_v2.value.client_id
          client_secret_setting_name = github_v2.value.client_secret_setting_name
          login_scopes               = github_v2.value.login_scopes
        }
      }
      dynamic "google_v2" {
        for_each = auth_settings_v2.value.google_v2 != null ? [auth_settings_v2.value.google_v2] : []
        content {
          allowed_audiences          = google_v2.value.allowed_audiences
          client_id                  = google_v2.value.client_id
          client_secret_setting_name = google_v2.value.client_secret_setting_name
          login_scopes               = google_v2.value.login_scopes
        }
      }
      http_route_api_prefix = auth_settings_v2.value.http_route_api_prefix
      login {
        allowed_external_redirect_urls    = auth_settings_v2.value.login.allowed_external_redirect_urls
        cookie_expiration_convention      = auth_settings_v2.value.login.cookie_expiration_convention
        cookie_expiration_time            = auth_settings_v2.value.login.cookie_expiration_time
        logout_endpoint                   = auth_settings_v2.value.login.logout_endpoint
        nonce_expiration_time             = auth_settings_v2.value.login.nonce_expiration_time
        preserve_url_fragments_for_logins = auth_settings_v2.value.login.preserve_url_fragments_for_logins
        token_refresh_extension_time      = auth_settings_v2.value.login.token_refresh_extension_time
        token_store_enabled               = auth_settings_v2.value.login.token_store_enabled
        token_store_path                  = auth_settings_v2.value.login.token_store_path
        token_store_sas_setting_name      = auth_settings_v2.value.login.token_store_sas_setting_name
        validate_nonce                    = auth_settings_v2.value.login.validate_nonce
      }
      dynamic "microsoft_v2" {
        for_each = auth_settings_v2.value.microsoft_v2 != null ? [auth_settings_v2.value.microsoft_v2] : []
        content {
          allowed_audiences          = microsoft_v2.value.allowed_audiences
          client_id                  = microsoft_v2.value.client_id
          client_secret_setting_name = microsoft_v2.value.client_secret_setting_name
          login_scopes               = microsoft_v2.value.login_scopes
        }
      }
      require_authentication = auth_settings_v2.value.require_authentication
      require_https          = auth_settings_v2.value.require_https
      runtime_version        = auth_settings_v2.value.runtime_version
      dynamic "twitter_v2" {
        for_each = auth_settings_v2.value.twitter_v2 != null ? [auth_settings_v2.value.twitter_v2] : []
        content {
          consumer_key                 = twitter_v2.value.consumer_key
          consumer_secret_setting_name = twitter_v2.value.consumer_secret_setting_name
        }
      }
      unauthenticated_action = auth_settings_v2.value.unauthenticated_action
    }
  }

  dynamic "backup" {
    for_each = each.value.backup != null ? [each.value.backup] : []
    content {
      enabled = backup.value.enabled
      name    = backup.value.name
      schedule {
        frequency_interval       = backup.value.schedule.frequency_interval
        frequency_unit           = backup.value.schedule.frequency_unit
        keep_at_least_one_backup = backup.value.schedule.keep_at_least_one_backup
        retention_period_days    = backup.value.schedule.retention_period_days
        start_time               = backup.value.schedule.start_time
      }
      storage_account_url = backup.value.storage_account_url
    }
  }

  dynamic "connection_string" {
    for_each = each.value.connection_string != null ? [each.value.connection_string] : []
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "storage_account" {
    for_each = each.value.storage_account != null ? [each.value.storage_account] : []
    content {
      access_key   = storage_account.value.access_key
      account_name = storage_account.value.account_name
      mount_path   = storage_account.value.mount_path
      name         = storage_account.value.name
      share_name   = storage_account.value.share_name
      type         = storage_account.value.type
    }
  }
}

