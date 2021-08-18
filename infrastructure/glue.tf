resource "aws_glue_job" "example" {
  name     = "example"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake.id}emr-code/pyspark/job_glue_igti_edc_censo.py"
  }
}