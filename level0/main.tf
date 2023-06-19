resource "aws_s3_bucket" "terraform_remote_state" {
  bucket = "terraform-remotestate-abc123xyz"

}

resource "aws_dynamodb_table" "terraform_remote_state" {
  name           = "remote-state0"
  billing_mode   = "PROVISIONED"
  read_capacity  = "1"
  write_capacity = "1"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}