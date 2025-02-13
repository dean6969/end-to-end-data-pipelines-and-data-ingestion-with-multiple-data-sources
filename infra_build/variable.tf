variable "env" {
  type        = string
  description = "Environment name (e.g. dev, prod)"
  default     = "dev"
}

variable "bucket_name" {
  type        = string
  description = "name of the bucket"
  default     = "safety-artifact-bucket-demo"
}