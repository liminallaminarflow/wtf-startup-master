#' Working with the .Renviron file

## We will be generating a Github Personal Access Token (PAT), adding it to
## your .Renviron file, creating a new project, commiting it with git and then
## using our PAT to uploading it to GitHub.

## The following functions from the `usethis` package will be very useful for this.

library("tidyverse")





#' Generate a GitHub Personal Access Token
## Be sure to check the scopes to allow creation of new repositories
usethis::browse_github_pat()

#' Add a GitHub Personal Access Token to your .Renviron
## The environment variable should be called `GITHUB_PAT`
usethis::edit_r_environ()

#' Create a new project
usethis::create_project(here::here())

#' Create a README.md in your new project
usethis::use_readme_md()

#' Commit the changes in git
usethis::use_git(message = "testing using .Renviron vars")

#' Push the project to GitHub
usethis::use_github(protocol = "https", credentials = )

