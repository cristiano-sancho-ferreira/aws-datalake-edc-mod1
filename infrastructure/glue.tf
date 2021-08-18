resource "aws_glue_job" "job-igti" {
  name     = "job-igti-edc-mod1-censo"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake.id}/emr-code/pyspark/job_glue_igti_edc_censo.py"
  }
}