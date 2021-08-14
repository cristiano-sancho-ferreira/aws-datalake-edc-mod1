# HCL - Hashicorp Configuration Language
# Liguagem declarativa

resource "aws_s3_bucket" "datalake" {
  # Parametros de configuracao do recurso escolhido
  bucket = var.base_bucket_name
  acl = "private"

  server_side_encryption_configuration {    
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }

  tags = {
    "curso" = "igti"
  }
}


resource "aws_s3_bucket_object" "code_spark" {
    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/job_emr.py"
    acl = "private"
    source = "../job_emr.py"
    etag = filemd5("../job_emr.py")    
}

provider "aws" {
  region = "us-east-1"
}