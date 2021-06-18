output "pipeline_arn" {
  value = "aws_codepipeline.applicationpipeline.arn"
}

output "github_connection_arn" {
  value = "aws_codestarconnections_connection.example.arn"
}

output "s3_arn" {
  value = "aws_s3_bucket.angularapps3.arn"
}
