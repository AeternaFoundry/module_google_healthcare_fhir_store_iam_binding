variable "healthcare_fhir_store_iam_bindings" {
  description = <<EOT
Map of healthcare_fhir_store_iam_bindings, attributes below
Required:
    - fhir_store_id
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    fhir_store_id = string
    members       = set(string)
    role          = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

