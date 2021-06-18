variable "aws_region" {
  description = "Which region of AWS data centres to host infrastructure"
  type        = string
  default     = "eu-west-1"
}

variable "scf_location" {
    description = "Local location for AWS shared credentials file"
    type = string
    default = "C:/Users/AndrewDixon/.aws/credentials"
}

variable "gh_repo" {
    description = "GitHub repository Id in the format User/repo"
    type = string
    default = "adj97/mr-mammoth"
}

variable "gh_repo_branch" {
    description = "GitHub repository branch name"
    type = string
    default = "main"
}