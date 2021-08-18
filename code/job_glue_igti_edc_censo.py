import sys
from pyspark.context import SparkContext
from awsglue.utils import getResolvedOptions
from awsglue.context import GlueContext
from awsglue.job import Job


## @params: ['JOB_NAME']
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args ['JOB_NAME'], args)

# A partir daqui o mesmo codigo executado no EMR

# Ler os dados no Cenco 2020

# docentes
docentes = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://igti-edc-mod1-datalake/raw-data/censo/docentes/")
)


(
    docentes
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("nu_ano_censo")
    .save("s3://igti-edc-mod1-datalake/staging-zone/censo/docentes/")
)

# escola
escola = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://igti-edc-mod1-datalake/raw-data/censo/escola/")
)


(
    escola
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("nu_ano_censo")
    .save("s3://igti-edc-mod1-datalake/staging-zone/censo/escola/")
)

# gestor
gestor = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://igti-edc-mod1-datalake/raw-data/censo/gestor/")
)


(
    gestor
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("nu_ano_censo")
    .save("s3://igti-edc-mod1-datalake/staging-zone/censo/gestor/")
)

# matricula
matricula = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://igti-edc-mod1-datalake/raw-data/censo/matricula/")
)


(
    matricula
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("nu_ano_censo")
    .save("s3://igti-edc-mod1-datalake/staging-zone/censo/matricula/")
)

# turmas/
turmas = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://igti-edc-mod1-datalake/raw-data/censo/turmas/")
)


(
    turmas
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("nu_ano_censo")
    .save("s3://igti-edc-mod1-datalake/staging-zone/censo/turmas/")
)
