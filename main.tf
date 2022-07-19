## Variables

variable name_prefix                {} # The prefix to the name of the bucket                    (required)
variable name_suffix                {} # The suffix to the name of the bucket                    (required)
variable resource_tags              {} # AWS tags to apply to resources                          (required)


variable force_destroy               { default = false }





resource "aws_s3_bucket" "s3" {

  bucket = "${var.name_prefix}-${var.name_suffix}"
  tags   = merge({Name = "${var.name_prefix}-${var.name_suffix}"}, var.resource_tags )
  force_destroy = var.force_destroy 
}


output "bucket_id" {value = aws_s3_bucket.s3.id}