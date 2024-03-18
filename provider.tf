terraform {
  required_version = ">= 1.4.0, < 2.0.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.1.0"
    }
  }

}

# Configure the GitHub Provider
provider "github" {
  token = var.github_token
  owner = "kuritka"
}
