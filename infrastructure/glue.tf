resource "aws_glue_job" "job-igti" {
  name     = "job-igti-edc-mod1-censo"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake.id}/emr-code/pyspark/job_glue_igti_edc_censo.py"
  }
}

resource "aws_glue_crawler" "igti-edc-mod1-censo-raw" {
  database_name = var.glue_database
  name          = "igti-edc-mod1-censo-raw-crawler"
  role          = aws_iam_role.glue_role.arn
  table_prefix  = "raw_"

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.id}/raw-data/censo"
  }
}

resource "aws_glue_crawler" "igti-edc-mod1-censo-pqt" {
  database_name = var.glue_database
  name          = "igti-edc-mod1-censo-parquet-crawler"
  role          = aws_iam_role.glue_role.arn
  table_prefix  = "tb_"

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.id}/staging-zone/censo"
  }
}


resource "aws_glue_catalog_database" "aws_glue_database" {
  name = var.glue_database
}

resource "aws_lakeformation_permissions" "glue_lake_role" {
  principal   = aws_iam_role.glue_role.arn
  permissions = ["ALL"]

  database {
    name = var.glue_database
  }
}
