resource "aws_glue_catalog_database" "aws_glue_database" {
  name = var.glue_database
}

resource "aws_lakeformation_permissions" "glue_lake_role" {
  principal   = aws_iam_role.glue_role.arn
  permissions = ["ALL", "ALTER", "CREATE_TABLE", "DESCRIBE", "DROP"]
  permissions_with_grant_option = ["ALL", "ALTER", "CREATE_TABLE", "DESCRIBE", "DROP"]

  database {
    name = var.glue_database
  }
}