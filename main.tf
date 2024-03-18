# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "github-branch-protetcion-demo-instance" {
  name                 = "github-branch-protetcion-demo-instance"
  description          = "created by github-branch-protetcion-demo 🟢"
  visibility           = "public" # this must be public otherwise 422 Secret Scanning can only be changed on org owned repositories []
  vulnerability_alerts = true
}


resource "github_branch_protection" "status_checks" {
  repository_id = github_repository.github-branch-protetcion-demo-instance.id
  pattern = "main"

  required_status_checks {
    strict = true
    contexts = ["GitLeaks", "YamlLint"]
  }
}


#resource "github_branch_protection_v3" "example" {
#  repository     = github_repository.github-branch-protetcion-demo-instance.name
#  branch         = "main"
#
#  required_status_checks {
#    strict = false
#    checks = ["GitLeaks: -1"]
#  }
#
#  restrictions {
#    users = ["kuritka"]
#  }
#}
