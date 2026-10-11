output "healthcare_fhir_store_iam_bindings_id" {
  description = "Map of id values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_fhir_store_iam_bindings_condition" {
  description = "Map of condition values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "healthcare_fhir_store_iam_bindings_etag" {
  description = "Map of etag values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "healthcare_fhir_store_iam_bindings_fhir_store_id" {
  description = "Map of fhir_store_id values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no fhir_store_id are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => v.fhir_store_id if v.fhir_store_id != null && length(v.fhir_store_id) > 0 }
}
output "healthcare_fhir_store_iam_bindings_members" {
  description = "Map of members values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "healthcare_fhir_store_iam_bindings_role" {
  description = "Map of role values across all healthcare_fhir_store_iam_bindings, keyed the same as var.healthcare_fhir_store_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_healthcare_fhir_store_iam_binding.healthcare_fhir_store_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

