workflow "issues" {
  on       = "issues"
  resolves = ["Add an issue to project"]
}

action "Add an issue to project" {
  uses    = "docker://masutaka/github-actions-all-in-one-project:1.1.0"
  secrets = ["MY_GITHUB_TOKEN"]
  args    = ["issue"]

  env = {
    PROJECT_URL         = "https://github.com/users/luizakataoka/projects/1/views/1"
    INITIAL_COLUMN_NAME = "To-do"
  }
}