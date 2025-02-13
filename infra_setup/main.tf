###############################################################################
# Cấu hình Terraform backend S3 và provider AWS
###############################################################################

terraform {
  # Yêu cầu phiên bản Terraform, provider AWS (nếu cần)
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # Backend S3: lưu trữ state trong S3 bucket
  backend "s3" {
    bucket  = "terraform-ed-zip1"       # Tên bucket S3
    key     = "terraform.tfstate"  # Đường dẫn file state bên trong bucket
    region  = "ap-southeast-2"          # Vùng AWS
    encrypt = true                      # Mã hoá file state (tùy chọn)
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

module "pipelinemodule" {
  source = "./modules"
}