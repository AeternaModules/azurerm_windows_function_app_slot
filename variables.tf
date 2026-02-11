variable "windows_function_app_slots" {
  description = <<EOT
Map of windows_function_app_slots, attributes below
Required:
    - function_app_id
    - name
    - site_config (block):
        - always_on (optional)
        - api_definition_url (optional)
        - api_management_api_id (optional)
        - app_command_line (optional)
        - app_scale_limit (optional)
        - app_service_logs (optional, block):
            - disk_quota_mb (optional)
            - retention_period_days (optional)
        - application_insights_connection_string (optional)
        - application_insights_key (optional)
        - application_stack (optional, block):
            - dotnet_version (optional)
            - java_version (optional)
            - node_version (optional)
            - powershell_core_version (optional)
            - use_custom_runtime (optional)
            - use_dotnet_isolated_runtime (optional)
        - auto_swap_slot_name (optional)
        - cors (optional, block):
            - allowed_origins (optional)
            - support_credentials (optional)
        - default_documents (optional)
        - elastic_instance_minimum (optional)
        - ftps_state (optional)
        - health_check_eviction_time_in_min (optional)
        - health_check_path (optional)
        - http2_enabled (optional)
        - ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - ip_restriction_default_action (optional)
        - load_balancing_mode (optional)
        - managed_pipeline_mode (optional)
        - minimum_tls_version (optional)
        - pre_warmed_instance_count (optional)
        - remote_debugging_enabled (optional)
        - remote_debugging_version (optional)
        - runtime_scale_monitoring_enabled (optional)
        - scm_ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - scm_ip_restriction_default_action (optional)
        - scm_minimum_tls_version (optional)
        - scm_use_main_ip_restriction (optional)
        - use_32_bit_worker (optional)
        - vnet_route_all_enabled (optional)
        - websockets_enabled (optional)
        - worker_count (optional)
Optional:
    - app_settings
    - builtin_logging_enabled
    - client_certificate_enabled
    - client_certificate_exclusion_paths
    - client_certificate_mode
    - content_share_force_disabled
    - daily_memory_time_quota
    - enabled
    - ftp_publish_basic_authentication_enabled
    - functions_extension_version
    - https_only
    - key_vault_reference_identity_id
    - public_network_access_enabled
    - service_plan_id
    - storage_account_access_key
    - storage_account_name
    - storage_key_vault_secret_id
    - storage_uses_managed_identity
    - tags
    - virtual_network_backup_restore_enabled
    - virtual_network_subnet_id
    - vnet_image_pull_enabled
    - webdeploy_publish_basic_authentication_enabled
    - auth_settings (block):
        - active_directory (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
        - additional_login_parameters (optional)
        - allowed_external_redirect_urls (optional)
        - default_provider (optional)
        - enabled (required)
        - facebook (optional, block):
            - app_id (required)
            - app_secret (optional)
            - app_secret_setting_name (optional)
            - oauth_scopes (optional)
        - github (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - google (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - issuer (optional)
        - microsoft (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - runtime_version (optional)
        - token_refresh_extension_hours (optional)
        - token_store_enabled (optional)
        - twitter (optional, block):
            - consumer_key (required)
            - consumer_secret (optional)
            - consumer_secret_setting_name (optional)
        - unauthenticated_client_action (optional)
    - auth_settings_v2 (block):
        - active_directory_v2 (optional, block):
            - allowed_applications (optional)
            - allowed_audiences (optional)
            - allowed_groups (optional)
            - allowed_identities (optional)
            - client_id (required)
            - client_secret_certificate_thumbprint (optional)
            - client_secret_setting_name (optional)
            - jwt_allowed_client_applications (optional)
            - jwt_allowed_groups (optional)
            - login_parameters (optional)
            - tenant_auth_endpoint (required)
            - www_authentication_disabled (optional)
        - apple_v2 (optional, block):
            - client_id (required)
            - client_secret_setting_name (required)
        - auth_enabled (optional)
        - azure_static_web_app_v2 (optional, block):
            - client_id (required)
        - config_file_path (optional)
        - custom_oidc_v2 (optional, block):
            - client_id (required)
            - name (required)
            - name_claim_type (optional)
            - openid_configuration_endpoint (required)
            - scopes (optional)
        - default_provider (optional)
        - excluded_paths (optional)
        - facebook_v2 (optional, block):
            - app_id (required)
            - app_secret_setting_name (required)
            - graph_api_version (optional)
            - login_scopes (optional)
        - forward_proxy_convention (optional)
        - forward_proxy_custom_host_header_name (optional)
        - forward_proxy_custom_scheme_header_name (optional)
        - github_v2 (optional, block):
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - google_v2 (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - http_route_api_prefix (optional)
        - login (required, block):
            - allowed_external_redirect_urls (optional)
            - cookie_expiration_convention (optional)
            - cookie_expiration_time (optional)
            - logout_endpoint (optional)
            - nonce_expiration_time (optional)
            - preserve_url_fragments_for_logins (optional)
            - token_refresh_extension_time (optional)
            - token_store_enabled (optional)
            - token_store_path (optional)
            - token_store_sas_setting_name (optional)
            - validate_nonce (optional)
        - microsoft_v2 (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - require_authentication (optional)
        - require_https (optional)
        - runtime_version (optional)
        - twitter_v2 (optional, block):
            - consumer_key (required)
            - consumer_secret_setting_name (required)
        - unauthenticated_action (optional)
    - backup (block):
        - enabled (optional)
        - name (required)
        - schedule (required, block):
            - frequency_interval (required)
            - frequency_unit (required)
            - keep_at_least_one_backup (optional)
            - retention_period_days (optional)
            - start_time (optional)
        - storage_account_url (required)
    - connection_string (block):
        - name (required)
        - type (required)
        - value (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - storage_account (block):
        - access_key (required)
        - account_name (required)
        - mount_path (optional)
        - name (required)
        - share_name (required)
        - type (required)
EOT

  type = map(object({
    function_app_id                                = string
    name                                           = string
    virtual_network_subnet_id                      = optional(string)
    virtual_network_backup_restore_enabled         = optional(bool) # Default: false
    tags                                           = optional(map(string))
    storage_uses_managed_identity                  = optional(bool) # Default: false
    storage_key_vault_secret_id                    = optional(string)
    storage_account_name                           = optional(string)
    storage_account_access_key                     = optional(string)
    service_plan_id                                = optional(string)
    public_network_access_enabled                  = optional(bool) # Default: true
    key_vault_reference_identity_id                = optional(string)
    https_only                                     = optional(bool)   # Default: false
    functions_extension_version                    = optional(string) # Default: "~4"
    ftp_publish_basic_authentication_enabled       = optional(bool)   # Default: true
    enabled                                        = optional(bool)   # Default: true
    daily_memory_time_quota                        = optional(number) # Default: 0
    content_share_force_disabled                   = optional(bool)   # Default: false
    client_certificate_mode                        = optional(string) # Default: "Optional"
    client_certificate_exclusion_paths             = optional(string)
    client_certificate_enabled                     = optional(bool) # Default: false
    builtin_logging_enabled                        = optional(bool) # Default: true
    app_settings                                   = optional(map(string))
    vnet_image_pull_enabled                        = optional(bool) # Default: false
    webdeploy_publish_basic_authentication_enabled = optional(bool) # Default: true
    site_config = object({
      always_on             = optional(bool)
      api_definition_url    = optional(string)
      api_management_api_id = optional(string)
      app_command_line      = optional(string)
      app_scale_limit       = optional(number)
      app_service_logs = optional(object({
        disk_quota_mb         = optional(number) # Default: 35
        retention_period_days = optional(number)
      }))
      application_insights_connection_string = optional(string)
      application_insights_key               = optional(string)
      application_stack = optional(object({
        dotnet_version              = optional(string) # Default: "v4.0"
        java_version                = optional(string)
        node_version                = optional(string)
        powershell_core_version     = optional(string)
        use_custom_runtime          = optional(bool)
        use_dotnet_isolated_runtime = optional(bool)
      }))
      auto_swap_slot_name = optional(string)
      cors = optional(object({
        allowed_origins     = optional(set(string))
        support_credentials = optional(bool) # Default: false
      }))
      default_documents                 = optional(list(string))
      elastic_instance_minimum          = optional(number)
      ftps_state                        = optional(string) # Default: "Disabled"
      health_check_eviction_time_in_min = optional(number) # Default: 0
      health_check_path                 = optional(string)
      http2_enabled                     = optional(bool) # Default: false
      ip_restriction = optional(object({
        action      = optional(string) # Default: "Allow"
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number) # Default: 65000
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      ip_restriction_default_action    = optional(string) # Default: "Allow"
      load_balancing_mode              = optional(string) # Default: "LeastRequests"
      managed_pipeline_mode            = optional(string) # Default: "Integrated"
      minimum_tls_version              = optional(string) # Default: "1.2"
      pre_warmed_instance_count        = optional(number)
      remote_debugging_enabled         = optional(bool) # Default: false
      remote_debugging_version         = optional(string)
      runtime_scale_monitoring_enabled = optional(bool)
      scm_ip_restriction = optional(object({
        action      = optional(string) # Default: "Allow"
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number) # Default: 65000
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      scm_ip_restriction_default_action = optional(string) # Default: "Allow"
      scm_minimum_tls_version           = optional(string) # Default: "1.2"
      scm_use_main_ip_restriction       = optional(bool)   # Default: false
      use_32_bit_worker                 = optional(bool)   # Default: true
      vnet_route_all_enabled            = optional(bool)   # Default: false
      websockets_enabled                = optional(bool)   # Default: false
      worker_count                      = optional(number)
    })
    auth_settings = optional(object({
      active_directory = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
      }))
      additional_login_parameters    = optional(map(string))
      allowed_external_redirect_urls = optional(list(string))
      default_provider               = optional(string)
      enabled                        = bool
      facebook = optional(object({
        app_id                  = string
        app_secret              = optional(string)
        app_secret_setting_name = optional(string)
        oauth_scopes            = optional(list(string))
      }))
      github = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      google = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      issuer = optional(string)
      microsoft = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      runtime_version               = optional(string)
      token_refresh_extension_hours = optional(number) # Default: 72
      token_store_enabled           = optional(bool)   # Default: false
      twitter = optional(object({
        consumer_key                 = string
        consumer_secret              = optional(string)
        consumer_secret_setting_name = optional(string)
      }))
      unauthenticated_client_action = optional(string)
    }))
    auth_settings_v2 = optional(object({
      active_directory_v2 = optional(object({
        allowed_applications                 = optional(list(string))
        allowed_audiences                    = optional(list(string))
        allowed_groups                       = optional(list(string))
        allowed_identities                   = optional(list(string))
        client_id                            = string
        client_secret_certificate_thumbprint = optional(string)
        client_secret_setting_name           = optional(string)
        jwt_allowed_client_applications      = optional(list(string))
        jwt_allowed_groups                   = optional(list(string))
        login_parameters                     = optional(map(string))
        tenant_auth_endpoint                 = string
        www_authentication_disabled          = optional(bool)
      }))
      apple_v2 = optional(object({
        client_id                  = string
        client_secret_setting_name = string
      }))
      auth_enabled = optional(bool)
      azure_static_web_app_v2 = optional(object({
        client_id = string
      }))
      config_file_path = optional(string)
      custom_oidc_v2 = optional(object({
        client_id                     = string
        name                          = string
        name_claim_type               = optional(string)
        openid_configuration_endpoint = string
        scopes                        = optional(list(string))
      }))
      default_provider = optional(string)
      excluded_paths   = optional(list(string))
      facebook_v2 = optional(object({
        app_id                  = string
        app_secret_setting_name = string
        graph_api_version       = optional(string)
        login_scopes            = optional(list(string))
      }))
      forward_proxy_convention                = optional(string) # Default: "NoProxy"
      forward_proxy_custom_host_header_name   = optional(string)
      forward_proxy_custom_scheme_header_name = optional(string)
      github_v2 = optional(object({
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      google_v2 = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      http_route_api_prefix = optional(string) # Default: "/.auth"
      login = object({
        allowed_external_redirect_urls    = optional(list(string))
        cookie_expiration_convention      = optional(string) # Default: "FixedTime"
        cookie_expiration_time            = optional(string) # Default: "08:00:00"
        logout_endpoint                   = optional(string)
        nonce_expiration_time             = optional(string) # Default: "00:05:00"
        preserve_url_fragments_for_logins = optional(bool)   # Default: false
        token_refresh_extension_time      = optional(number) # Default: 72
        token_store_enabled               = optional(bool)   # Default: false
        token_store_path                  = optional(string)
        token_store_sas_setting_name      = optional(string)
        validate_nonce                    = optional(bool) # Default: true
      })
      microsoft_v2 = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      require_authentication = optional(bool)
      require_https          = optional(bool)   # Default: true
      runtime_version        = optional(string) # Default: "~1"
      twitter_v2 = optional(object({
        consumer_key                 = string
        consumer_secret_setting_name = string
      }))
      unauthenticated_action = optional(string) # Default: "RedirectToLoginPage"
    }))
    backup = optional(object({
      enabled = optional(bool) # Default: true
      name    = string
      schedule = object({
        frequency_interval       = number
        frequency_unit           = string
        keep_at_least_one_backup = optional(bool)   # Default: false
        retention_period_days    = optional(number) # Default: 30
        start_time               = optional(string)
      })
      storage_account_url = string
    }))
    connection_string = optional(object({
      name  = string
      type  = string
      value = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    storage_account = optional(object({
      access_key   = string
      account_name = string
      mount_path   = optional(string)
      name         = string
      share_name   = string
      type         = string
    }))
  }))
}

