# -----------------------------------------------------------------------------
# Variables de Configuración Global del Proyecto
# -----------------------------------------------------------------------------
variable "project_id" {
  description = "El ID de tu proyecto de Google Cloud (xrubi-fd22e)."
  type        = string
  default     = "xrubi-fd22e"
}

variable "region" {
  description = "La región para los recursos (Cloud Run, Artifact Registry)."
  type        = string
  default     = "us-central1"
}

# -----------------------------------------------------------------------------
# Variable de Seguridad para Cloud Armor
# -----------------------------------------------------------------------------
variable "ip_to_block" {
  description = "La dirección IP (o bloque CIDR) a bloquear con Cloud Armor para la verificación."
  type        = string
  default     = "1.2.3.4/32" 
}
