variable "base_bucket_name" {
  default = "igti-edc-mod1-datalake999"
}

variable "region" {
  default = "us-east-1"
}



variable "lambda_function_name" {
  default = "IGTIexecutaEMRaovivo"
}

variable "key_pair_name" {
  default = "ney-igti-teste"
}

variable "airflow_subnet_id" {
  default = "subnet-4cef5427"
}

variable "vpc_id" {
  default = "vpc-d724b4bc"
}