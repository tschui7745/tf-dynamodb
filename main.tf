resource "aws_dynamodb_table" "book_inventory_table" {
  name         = "tschui-bookinventory" # Table name 
  hash_key     = "ISBN"                 # Partition Key
  range_key    = "Genre"                # Sort Key
  billing_mode = "PAY_PER_REQUEST"      # On-demand billing
  attribute {
    name = "ISBN"
    type = "S" # String type
  }
  attribute {
    name = "Genre"
    type = "S" # String type
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "tschui-s3-bucket" # The name of the S3 bucket (must be globally unique)
}