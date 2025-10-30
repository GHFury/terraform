/*
Example S3 backend configuration (enable by filling values and removing the surrounding comment block).

terraform {
  backend "s3" {
    # replace these values with your backend
    # bucket         = "my-terraform-state-bucket"
    # key            = "terraform/infra/terraform.tfstate"
    # region         = "us-east-1"
    # dynamodb_table = "terraform-locks"  # optional: for state locking
    # encrypt        = true
  }
}

Notes:
- Create the S3 bucket and (optionally) a DynamoDB table for locking before enabling the backend.
- To enable: copy this block to a real `backend.tf` (remove comment markers) and run `terraform init`.
*/
