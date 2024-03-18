# are shown after apply
output "name" {
  description = "full repository name"
  value       = github_repository.github-branch-protetcion-demo-instance.full_name
}

output "url" {
  description = "full repository url"
  value       = github_repository.github-branch-protetcion-demo-instance.git_clone_url
}

output "protection_rules" {
  description = "full repository url"
  value       = github_branch_protection.status_checks.required_status_checks
}
