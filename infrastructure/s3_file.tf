# HCL - Hashicorp Configuration Language
# Liguagem declarativa

resource "aws_s3_bucket_object" "code_spark" {
    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/job_emr.py"
    acl = "private"
    source = "../code/job_emr.py"
    etag = filemd5("../code/job_emr.py")    
}

resource "aws_s3_bucket_object" "code" {
    bucket = aws_s3_bucket.datalake.id
    key = "raw-data/enem/year=2019/"
    acl = "private"    
}

resource "aws_s3_bucket_object" "delta_spark_insert" {
    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/01_delta_spark_insert.py"
    acl = "private"
    source = "../code/01_delta_spark_insert.py"
    etag = filemd5("../code/01_delta_spark_insert.py")    
}

resource "aws_s3_bucket_object" "delta_spark_upsert" {
    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/02_delta_spark_upsert.py"
    acl = "private"
    source = "../code/02_delta_spark_upsert.py"
    etag = filemd5("../code/02_delta_spark_upsert.py")    
}
