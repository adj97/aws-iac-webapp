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
      "arn:aws:s3:::angular-app-cc510f22",
      "arn:aws:s3:::angular-app-cc510f22/*"
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
      "arn:aws:s3:::angular-app-cc510f22",
      "arn:aws:s3:::angular-app-cc510f22/*"
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