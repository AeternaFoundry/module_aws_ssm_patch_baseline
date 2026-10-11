variable "ssm_patch_baselines" {
  description = <<EOT
Map of ssm_patch_baselines, attributes below
Required:
    - name
Optional:
    - approved_patches
    - approved_patches_compliance_level
    - approved_patches_enable_non_security
    - available_security_updates_compliance_status
    - description
    - operating_system
    - region
    - rejected_patches
    - rejected_patches_action
    - tags
    - tags_all
    - approval_rule (block):
        - approve_after_days (optional)
        - approve_until_date (optional)
        - compliance_level (optional)
        - enable_non_security (optional)
        - patch_filter (required, block):
            - key (required)
            - values (required)
    - global_filter (block):
        - key (required)
        - values (required)
    - source (block):
        - configuration (required)
        - name (required)
        - products (required)
EOT

  type = map(object({
    name                                         = string
    approved_patches                             = optional(set(string))
    approved_patches_compliance_level            = optional(string)
    approved_patches_enable_non_security         = optional(bool)
    available_security_updates_compliance_status = optional(string)
    description                                  = optional(string)
    operating_system                             = optional(string)
    region                                       = optional(string)
    rejected_patches                             = optional(set(string))
    rejected_patches_action                      = optional(string)
    tags                                         = optional(map(string))
    tags_all                                     = optional(map(string))
    approval_rule = optional(list(object({
      approve_after_days  = optional(number)
      approve_until_date  = optional(string)
      compliance_level    = optional(string)
      enable_non_security = optional(bool)
      patch_filter = list(object({
        key    = string
        values = list(string)
      }))
    })))
    global_filter = optional(list(object({
      key    = string
      values = list(string)
    })))
    source = optional(list(object({
      configuration = string
      name          = string
      products      = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.approval_rule == null || alltrue([for item in v.approval_rule : (length(item.patch_filter) >= 1 && length(item.patch_filter) <= 10)])
      )
    ])
    error_message = "Each patch_filter list must contain between 1 and 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.global_filter == null || (length(v.global_filter) <= 4)
      )
    ])
    error_message = "Each global_filter list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.source == null || (length(v.source) <= 20)
      )
    ])
    error_message = "Each source list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.approval_rule == null || alltrue([for item in v.approval_rule : (item.approve_after_days == null || (item.approve_after_days >= 0 && item.approve_after_days <= 360))])
      )
    ])
    error_message = "must be between 0 and 360"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.approval_rule == null || alltrue([for item in v.approval_rule : (item.approve_until_date == null || (can(regex("([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))", item.approve_until_date))))])
      )
    ])
    error_message = "must be formatted YYYY-MM-DD"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.approved_patches == null || (alltrue([for x in v.approved_patches : length(x) >= 1 && length(x) <= 100]))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_patch_baselines : (
        v.rejected_patches == null || (alltrue([for x in v.rejected_patches : length(x) >= 1 && length(x) <= 100]))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

