variable "env" {
  type        = string
  description = "Environment name (e.g. dev, prod)"
  default     = "dev"
}

# Biến ví dụ, bạn có thể chuyển sang variables.tf
variable "codestar_connection_arn" {
  type        = string
  description = "ARN của CodeStar Connection tới GitHub"
  default     = "arn:aws:codeconnections:ap-southeast-2:597088050365:connection/3e857296-ccd4-465f-876d-6c9166354b39"
}

variable "repository" {
  type        = string
  description = "GitHub repository dưới dạng owner/repo"
  default     = "dean6969/end-to-end-data-pipelines-and-data-ingestion-with-multiple-data-sources"
}

variable "branch" {
  type        = string
  description = "Git branch"
  default     = "main"
}

variable "pipeline_name" {
  type        = string
  description = "Tên CodePipeline"
  default     = "safety-pipeline-demo"
}

variable "codebuild_project_name" {
  type        = string
  description = "Tên CodeBuild project"
  default     = "safety-codebuild-demo"
}

variable "artifact_bucket_name" {
  type        = string
  description = "Tên S3 bucket dùng lưu artifact"
  default     = "safety-artifact-bucket-demo"
}