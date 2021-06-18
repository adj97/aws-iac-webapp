resource "aws_iam_role" "codepipeline_role" {
  name = "test-role"

  assume_role_policy = data.aws_iam_policy_document.codepipeline_role_policy_document.json

  #   assume_role_policy = <<EOF
  # {
  #   "Version": "2012-10-17",
  #   "Statement": [
  #     {
  #       "Effect": "Allow",
  #       "Principal": {
  #         "Service": "codepipeline.amazonaws.com"
  #       },
  #       "Action": "sts:AssumeRole"
  #     }
  #   ]
  # }
  # EOF
}