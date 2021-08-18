resource "aws_glue_job" "job-igti" {
  name     = "job-igti-edc-mod1-censo"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake.id}/emr-code/pyspark/job_glue_igti_edc_censo.py"
  }
}

resource "aws_glue_crawler" "igti-edc-mod1-censo" {
  database_name = var.glue_database
  name          = "igti-edc-mod1-censo-raw-crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.id}/raw-data/censo"
  }
}