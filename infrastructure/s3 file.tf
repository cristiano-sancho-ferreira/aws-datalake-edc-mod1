# HCL - Hashicorp Configuration Language
# Liguagem declarativa

resource "aws_s3_bucket_object" "code_spark" {
    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/job_emr.py"
    acl = "private"
    source = "../job_emr.py"
    etag = filemd5("../job_emr.py")    
}
