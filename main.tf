# EJERCICIO 1 · Dos buckets de S3
# Sustituye cada ___ por el valor correcto. Consulta la documentación:
#   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
#   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning

# Bucket 1: ya resuelto. Úsalo como modelo.
resource "aws_s3_bucket" "datos" {
  bucket        = "${var.prefijo}-tf-datos"
  force_destroy = true # permite borrarlo con destroy aunque tenga ficheros

  tags = {
    Curso  = "G2601118"
    Modulo = "1"
  }
}

# Versionado del bucket de datos: complétalo.
# El versionado permite mantener varias versiones de un mismo objeto en el bucket.
# Mediante este ejemplo vemos cómo podemos referenciar un recurso desde otro, usando su nombre local y el atributo id.
resource "aws_s3_bucket_versioning" "datos" {
  bucket = ___ # referencia al id del bucket "datos"

  versioning_configuration {
    status = ___ # "Enabled" o "Suspended"
  }
}

# Bucket 2: complétalo tomando como modelo el bucket 1.
# Debe llamarse "<prefijo>-tf-logs" y llevar las mismas etiquetas.
resource "aws_s3_bucket" "___" { # nombre local: logs
  bucket        = ___
  force_destroy = true

  tags = ___
}
