resource "github_repository" "example" {
  name        = "Terraform-Example"
  description = "My awesome codebase from Terraform"

  visibility = "public"
}