resource "aws_ecr_repository" "devops_ci_api" {
  name = "devops_ci"

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    IAC = "true"
  }
}