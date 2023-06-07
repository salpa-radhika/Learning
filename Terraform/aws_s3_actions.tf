terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_bucket"{
  bucket = "terraform-bucket-salparadhika"
  force_destroy = true
   tags = {
   name = "practice"
   }
}

#create single object 
resource "aws_s3_bucket_object" "single_file" {
  bucket = "aws_s3_bucket.terraform_bucket.id"
  key    = "terraform-file-1"
  source = "/Users/Radhika/Downloads/rename.jpg"
  force_destroy = true
}


# create multiple objects
resource "aws_s3_bucket_object" "multiple_files"{
  bucket = "aws_s3_bucket.terraform_bucket.id"
  for_each = fileset("/Users/Radhika/Documents/sample", "*")
  key = each.value
  source = "/Users/Radhika/Documents/sample/${each.value}"
}


#create folder
resource "aws_s3_bucket_object" "terraform_folder"{
  bucket = aws_s3_bucket.terraform_bucket.id
  key = "terraform-test-folder/"
}

#insert single file into folder
resource "aws_s3_bucket_object" "single_file_in_folder" {
  bucket = aws_s3_bucket.terraform_bucket.id
  key = "terraform_folder/hello"
  source = "/Users/Radhika/Documents/sample/file1"
}

#insert multiple files into folder
resource "aws_s3_bucket_object" "multiple_files_in_folder" {
  bucket = aws_s3_bucket.terraform_bucket.id
  for_each = fileset("/Users/Radhika/Documents/sample","*")
  key = "terraform_folder/${each.value}"
  source = "/Users/Radhika/Documents/sample/${each.value}"
}



#destroy
first set force_destroy flag to true
terraform destroy -target aws_s3_bucket_object.multiple_files_in_folder





