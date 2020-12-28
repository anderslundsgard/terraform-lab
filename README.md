# terraform-lab

terraform init -backend-config="bucket=lundsgard-deploy-terraform-state" -backend-config="region=eu-west-1" -backend-config="dynamodb_table=lundsgard-deploy-terraform-lock"