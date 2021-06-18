data "aws_iam_policy_document" "s3_policy_document" {
  statement {
    sid    = "WhiteListGet"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = [aws_iam_role.codepipeline_role.arn]
    }

    actions = [
      "s3:GetObject",
      "s3:GetObjectVersion",
      "s3:GetBucketVersioning"
    ]

    resources = [
      aws_s3_bucket.angularapps3.arn,
      "${aws_s3_bucket.angularapps3.arn}/*"
    ]
  }

  statement {
    sid    = "WhiteListPut"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = [aws_iam_role.codepipeline_role.arn]
    }

    actions = [
      "s3:PutObject"
    ]

    resources = [
      aws_s3_bucket.angularapps3.arn,
      "${aws_s3_bucket.angularapps3.arn}/*"
    ]
  }
}

data "aws_iam_policy_document" "codepipeline_role_policy_document" {
  statement {
    sid    = "WhiteListGet"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["codepipeline.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}