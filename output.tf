output "dynamodb_table_name" {
  value = aws_dynamodb_table.book_inventory_table.name
}