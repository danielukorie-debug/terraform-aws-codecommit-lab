
resource "aws_codecommit_repository" "lab" {
  repository_name = "terraform-codecommit-lab"
  description     = "AWS CodeCommit Terraform learning lab"

  tags = {
    Project     = "terraform-aws-codecommit-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
