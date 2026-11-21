output "repository_name" {
  description = "Name of the planned CodeCommit repository."
  value       = aws_codecommit_repository.lab.repository_name
}

output "repository_arn" {
  description = "ARN of the planned CodeCommit repository."
  value       = aws_codecommit_repository.lab.arn
}

output "repository_clone_url_http" {
  description = "HTTPS clone URL of the planned repository."
  value       = aws_codecommit_repository.lab.clone_url_http
}
