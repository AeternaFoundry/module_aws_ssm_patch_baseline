output "ssm_patch_baselines_id" {
  description = "Map of id values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_patch_baselines_approval_rule" {
  description = "Map of approval_rule values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.approval_rule if v.approval_rule != null && length(v.approval_rule) > 0 }
}
output "ssm_patch_baselines_approved_patches" {
  description = "Map of approved_patches values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.approved_patches if v.approved_patches != null && length(v.approved_patches) > 0 }
}
output "ssm_patch_baselines_approved_patches_compliance_level" {
  description = "Map of approved_patches_compliance_level values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.approved_patches_compliance_level if v.approved_patches_compliance_level != null && length(v.approved_patches_compliance_level) > 0 }
}
output "ssm_patch_baselines_approved_patches_enable_non_security" {
  description = "Map of approved_patches_enable_non_security values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.approved_patches_enable_non_security if v.approved_patches_enable_non_security != null }
}
output "ssm_patch_baselines_arn" {
  description = "Map of arn values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssm_patch_baselines_available_security_updates_compliance_status" {
  description = "Map of available_security_updates_compliance_status values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.available_security_updates_compliance_status if v.available_security_updates_compliance_status != null && length(v.available_security_updates_compliance_status) > 0 }
}
output "ssm_patch_baselines_description" {
  description = "Map of description values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ssm_patch_baselines_global_filter" {
  description = "Map of global_filter values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.global_filter if v.global_filter != null && length(v.global_filter) > 0 }
}
output "ssm_patch_baselines_json" {
  description = "Map of json values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.json if v.json != null && length(v.json) > 0 }
}
output "ssm_patch_baselines_name" {
  description = "Map of name values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssm_patch_baselines_operating_system" {
  description = "Map of operating_system values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "ssm_patch_baselines_region" {
  description = "Map of region values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssm_patch_baselines_rejected_patches" {
  description = "Map of rejected_patches values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.rejected_patches if v.rejected_patches != null && length(v.rejected_patches) > 0 }
}
output "ssm_patch_baselines_rejected_patches_action" {
  description = "Map of rejected_patches_action values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.rejected_patches_action if v.rejected_patches_action != null && length(v.rejected_patches_action) > 0 }
}
output "ssm_patch_baselines_source" {
  description = "Map of source values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.source if v.source != null && length(v.source) > 0 }
}
output "ssm_patch_baselines_tags" {
  description = "Map of tags values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssm_patch_baselines_tags_all" {
  description = "Map of tags_all values across all ssm_patch_baselines, keyed the same as var.ssm_patch_baselines"
  value       = { for k, v in aws_ssm_patch_baseline.ssm_patch_baselines : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

