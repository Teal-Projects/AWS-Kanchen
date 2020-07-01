resource "aws_s3_bucket" "test-01" {
  bucket = "kanchen-test-01"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "Test sync docker container to S3"
    Proj = "Test"
    Env  = "Test"
  }
}

resource "aws_s3_bucket_policy" "b" {
  bucket = "${aws_s3_bucket.test-01.id}"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Id": "S3PolicyId1",
    "Statement": [
        {
            "Sid": "IPAllow",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::kanchen-test-01/*",
            "Condition": {
                "NotIpAddress": {
                    "aws:SourceIp": "91.213.91.28/32"
                }
            }
        }
    ]
}
POLICY
}

resource "aws_s3_bucket_object" "Backup" {
  bucket = "${aws_s3_bucket.test-01.id}"
  acl    = "private"
  key    = "Backup/"
  source = "/dev/null"
}
