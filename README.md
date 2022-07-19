# terraform-module-s3
Simple Terraform module for creating s3 buckets

This module will spin up a very basic S3 bucket to be used by BOSH and/or CF

Inputs - Required:

 - `resource_tags` - AWS tags to apply to resources
 - `name_prefix` - The prefix to the name of the bucket
 - `name_suffix` - The suffix to the name of the bucket 


Inputs - Optional: 

 - `force_destroy` - Allow a non-empty bucket to be destroyed on `terraform destroy` command

Outputs:

 - `bucket_id` - The bucket name which was created
