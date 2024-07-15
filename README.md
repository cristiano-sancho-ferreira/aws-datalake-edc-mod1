
# Bootcamp Engenheiro(a) de Dados Cloud

## Fundamentos em Arquitetura de Dados e Soluções em Nuvem

Exercitar os seguintes conceitos trabalhados no Módulo:

✓ Arquiteturas de Dados em Nuvem;

✓ Implementação de Data Lake em solução Cloud de Storage;

✓ Implementação de Processamento de Big Data;

✓ Esteiras de Deploy, utilizando o Github;

✓ IaC com Terraform.



## Atividades 1 - Trabalho Pratica

Você deverá desempenhar as seguintes atividades:
1. Realizar o download dos MICRODADOS do ENEM 2019. O arquivo está disponível neste link: <https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados>

2. Criar um bucket chamado datalake-<seunome>-<numerodaconta> para armazenamento dos dados crus do ENEM 2019.

3. Fazer a ingestão dos dados do ENEM 2019 em seu data lake numa pasta intitulada raw-data utilizando o SDK de sua preferência ou a AWS CLI (Boto3 - https://boto3.amazonaws.com/v1/documentation/api/latest/index.html; AWS CLI - https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html e https://awscli.amazonaws.com/v2/documentation/api/latest/index.html).

4. Fazer a transformação do CSV em parquet utilizando spark

5. Escrever o parquet em uma outra pasta no bucket chamada consumer-zone.

6. Criar e executar um Glue Crawler para disponibilizar o schema dos dados do ENEM 2019.

7. Realizar consultas SQL no AWS Athena para responder às perguntas do trabalho prático.





## Atividades 2 -  Desafio

1. Realizar a ingestão dos dados do Censo Escolar 2020 no AWS S3 ou outro storage de nuvem de sua escolha. Dados disponíveis em: https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-escolar. O método de ingestão é livre. Os dados devem ser ingeridos na zona raw ou zona crua ou zona bronze do seu Data Lake.

2. Utilizar alguma tecnologia de Big Data para transformar os dados no formato parquet e escrevê-los na zona staging ou zona silver do seu Data Lake.

3. Fazer a integração com alguma engine de Data Lake. No caso da AWS, você deve:
a. Configurar um Crawler para a pasta onde os arquivos na staging estão depositados;
b. Validar a disponibilização no Athena.

4. Caso deseje utilizar o Google, disponibilize os dados para consulta usando o Big Query. Caso utilize outra nuvem, a escolha da engine de Data Lake é livre.

5. Use a ferramenta de Big Data ou a engine de Data Lake (ou o BigQuery, se escolher trabalhar com Google Cloud) para investigar os dados e responder às perguntas do desafio.

6. Quando o desenho da arquitetura estiver pronto, crie um repositório no Github (ou Gitlab, ou Bitbucket, ou outro de sua escolha) e coloque o código IaC para a implantação da infraestrutura. Nenhum recurso deve ser implantado manualmente.


   ![image](https://github.com/user-attachments/assets/bd6c472e-901c-47f4-9b17-2f8acb57bbb9)


