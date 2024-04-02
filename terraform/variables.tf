# Dockerfile

variable "dockerfile_python_version" {
  description = "The Python version to use in the Dockerfile"
  type        = string
  default     = "3.10"
}

# pre-commit-config.yaml.tpl

variable "pre_commit_config_repos" {
  description = "A list of repositories and their hooks for the pre-commit configuration"
  type = list(object({
    url   = string
    rev   = string
    hooks = list(object({
      id   = string
      args = list(string)
    }))
  }))
  default = [
    {
      url = "https://github.com/pre-commit/pre-commit-hooks"
      rev = "v4.0.1"
      hooks = [
        { id = "check-yaml", args = [] },
        { id = "trailing-whitespace", args = [] },
        { id = "check-added-large-files", args = [] },
        { id = "check-merge-conflict", args = [] },
        { id = "check-json", args = [] },
        { id = "check-toml", args = [] },
        { id = "detect-aws-credentials", args = [] },
        { id = "detect-private-key", args = [] },
        { id = "name-tests-test", args = ["--django"] },
        { id = "end-of-file-fixer", args = [] }
      ]
    }
  ]
}

# ruff.toml

variable "ruff_line_length" {
  type    = number
  default = 88
}

variable "ruff_indent_width" {
  type    = number
  default = 4
}

variable "ruff_target_version" {
  type    = string
  default = "py310"
}

variable "ruff_quote_style" {
  type    = string
  default = "double"
}

variable "ruff_indent_style" {
  type    = string
  default = "space"
}

variable "ruff_skip_magic_trailing_comma" {
  type    = bool
  default = false
}

variable "ruff_line_ending" {
  type    = string
  default = "auto"
}

variable "ruff_docstring_code_format" {
  type    = bool
  default = false
}

variable "ruff_docstring_code_line_length" {
  type    = string
  default = "dynamic"
}

variable "ruff_lint_select" {
  type    = list(string)
  default = ["E4", "E7", "E9", "F", "Q"]
}

variable "ruff_lint_fixable" {
  type    = list(string)
  default = ["ALL"]
}

variable "ruff_lint_unfixable" {
  type    = list(string)
  default = []
}

variable "ruff_dummy_variable_rgx" {
  type    = string
  default = "^(_+|(_+[a-zA-Z0-9_]*[a-zA-Z0-9]+?))$"
}

variable "ruff_docstring_quotes" {
  type    = string
  default = "double"
}

# pytest.ini

variable "pytest_testpaths" {
  type    = string
  default = "tests"
}

variable "pytest_python_files" {
  type    = string
  default = "test_*.py"
}

variable "pytest_python_functions" {
  type    = string
  default = "test_*"
}

variable "pytest_log_cli_level" {
  type    = string
  default = "INFO"
}

# .gitignore

variable "gitignore_dynamic_entries" {
  description = "Dynamic entries to be added to .gitignore"
  type        = string
  default     = """
"""
}

# .dockerignore

variable "dockerignore_dynamic_entries" {
  description = "Dynamic entries to be added to .dockerignore"
  type        = string
  default     = """
"""
}

# pyproject.toml

variable "poetry_project_name" {
  type    = string
  default = "python-flat-template"
}

variable "poetry_project_version" {
  type    = string
  default = "0.1.0"
}

variable "poetry_project_description" {
  type    = string
  default = "Python flat template"
}

variable "poetry_project_author" {
  type    = string
  default = "Andres Garcia <jose.andres.gm29@gmail.com>"
}

variable "poetry_project_license" {
  type    = string
  default = "MIT"
}

variable "poetry_project_readme" {
  type    = string
  default = "README.md"
}

variable "poetry_project_package_include" {
  type    = string
  default = "python_flat_template"
}

variable "poetry_python_version" {
  type    = string
  default = "3.10"
}

variable "poetry_ruff_version" {
  type    = string
  default = "0.3.4"
}

variable "poetry_pytest_version" {
  type    = string
  default = "8.1.1"
}

variable "poetry_pre_commit_version" {
  type    = string
  default = "3.7.0"
}
