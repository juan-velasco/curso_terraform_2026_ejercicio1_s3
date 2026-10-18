# Ejercicio 1 · Dos buckets de S3

## Preparación

1. Copia el fichero de variables y rellénalo:

   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

   - `prefijo`: tu nombre y apellido en minúsculas y con guiones (ej.: `ana-lopez`).
     Los nombres de bucket son únicos en todo AWS.
   - `usar_floci`: `false` para usar tu cuenta de AWS (credenciales de `aws configure`),
     `true` para trabajar en local con Floci.

2. Si usas Floci, arráncalo antes de seguir. Debe escuchar en `http://localhost:4566`.

## Enunciado

Sustituye cada `___` de `main.tf` y `outputs.tf`:

1. Completa el versionado del bucket `datos` (`aws_s3_bucket_versioning`).
2. Crea el bucket `logs` tomando como modelo el bucket `datos`.
3. Completa el output `bucket_logs`.

Documentación:
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning

## Ejecución

```bash
terraform init      # descarga el provider de AWS
terraform fmt       # formatea el código
terraform validate  # comprueba la sintaxis
terraform plan      # muestra qué se va a crear
terraform apply     # crea los recursos
terraform output    # muestra los nombres de los buckets
```

Al terminar, borra los recursos para no generar costes:

```bash
terraform destroy
```
