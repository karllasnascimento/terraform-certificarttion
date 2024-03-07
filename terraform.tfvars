aws_region = "us-east-1d"
vpc_name   = "demo vpc"
vpc_cidr   = "10.0.204.0/24"

# $ terraform plan -var variables_sub_az="us-east-1e" -var variables_sub_cidr="10.0.205.0/24"
# or
# $ terraform plan -var variables_sub_az="us-east-1e" -var variables_sub_cidr="10.0.205.0/24 -out plan"
# $ terraform apply -var variables_sub_az="us-east-1e" -var variables_sub_cidr="10.0.205.0/24"