terraform {
  backend "remote" {
    organization = "douglasnaphas"

    workspaces {
      name = "Example-Workspace"
    }
  }
}
