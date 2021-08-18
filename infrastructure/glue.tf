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

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.id}/raw-data/censo"
  }
}

resource "aws_glue_crawler" "igti-edc-mod1-censo-pqt" {
  database_name = var.glue_database
  name          = "igti-edc-mod1-censo-parquet-crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.id}/staging-zone/censo"
  }
}


resource "aws_lakeformation_data_lake_settings" "permission" {
  admins = [aws_iam_role.glue_role.arn]

  create_table_default_permissions {
    permissions = ["ALL"]
    principal   = aws_iam_role.glue_role.arn
  }
}