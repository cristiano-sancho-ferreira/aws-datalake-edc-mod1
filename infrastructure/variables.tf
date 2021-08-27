variable "base_bucket_name" {
  default = "igti-edc-mod1-alam"
}

variable "region" {
  default = "us-east-1"
}



variable "lambda_function_name" {
  default = "IGTIexecutaEMR"
}

variable "key_pair_name" {
  default = "KeyMaster"
}

variable "airflow_subnet_id" {
  default = "subnet-1df39e13"
}

variable "vpc_id" {
  default = "vpc-801addfd"
}

variable "glue_database" {
  default = "igti_datalake"
}