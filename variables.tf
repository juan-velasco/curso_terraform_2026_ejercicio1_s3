variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "eu-west-1"
}

variable "usar_floci" {
  description = "true para trabajar en local con Floci; false para usar tu cuenta de AWS"
  type        = bool
  default     = false
}

variable "prefijo" {
  description = "Tu nombre y apellido en minúsculas y con guiones (ej.: ana-lopez). Los nombres de bucket son únicos en todo AWS."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9-]{3,30}$", var.prefijo))
    error_message = "Usa solo minúsculas, números y guiones (entre 3 y 30 caracteres)."
  }
}
