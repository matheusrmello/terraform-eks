resource "aws_ecr_repository" "flask" {
  name         = "flask-api-ecr"
  force_delete = true

}