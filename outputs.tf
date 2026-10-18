output "bucket_datos" {
  description = "Nombre del bucket de datos"
  value       = aws_s3_bucket.datos.bucket
}

output "bucket_logs" {
  description = "Nombre del bucket de logs"
  value       = ___ # complétalo como el output anterior
}
