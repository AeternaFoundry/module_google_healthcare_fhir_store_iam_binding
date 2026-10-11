resource "google_healthcare_fhir_store_iam_binding" "healthcare_fhir_store_iam_bindings" {
  for_each = var.healthcare_fhir_store_iam_bindings

  fhir_store_id = each.value.fhir_store_id
  members       = each.value.members
  role          = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

