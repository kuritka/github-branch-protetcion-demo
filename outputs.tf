# are shown after apply
output "name" {
  description = "full repository name"
  value       = github_repository.github-branch-protetcion-demo-instance.full_name
}

output "url" {
  description = "full repository url"
  value       = github_repository.github-branch-protetcion-demo-instance.git_clone_url
}
