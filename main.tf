resource "aws_dynamodb_table" "book_inventory_table" {
  name         = var.table_name        # Table name 
  hash_key     = var.hash_key_name     # Partition Key
  range_key    = var.range_key_name    # Sort Key
  billing_mode = var.billing_mode_name # On-demand billing
  attribute {
    name = var.hash_key_name
    type = "S" # String type
  }
  attribute {
    name = var.range_key_name
    type = "S" # String type
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name # The name of the S3 bucket (must be globally unique)
}