variable "tf-state_bucket" {
  description = "Name of the bucket where terraform state is store"
  type        = string
  default     = "tfstate-2d85d393-67b4-4919-a56e-74cc6115437f"
}

variable "tf-state_dynamodb" {
  description = "Name of the DynamoDB where terraform state is store"
  type        = string
  default     = "tfstate-67dcaa40-b14c-11ea-b3de-0242ac130004"

}
