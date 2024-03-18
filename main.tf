# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "github-branch-protetcion-demo-instance" {
  name                 = "github-branch-protetcion-demo-instance"
  description          = "created by github-branch-protetcion-demo 🟢"
  visibility           = "private"
  vulnerability_alerts = true
}

resource "github_branch_protection_v3" "example" {
  repository     = github_repository.github-branch-protetcion-demo-instance.name
  branch         = "main"

  restrictions {
    users = ["foo-user"]
  }

  required_status_checks {
    strict = false
    checks = [
      "ci/check:824642007264"
    ]
  }
}
