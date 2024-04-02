repos:
  %{ for repo in repos ~}
  - repo: ${repo.url}
    rev: ${repo.rev}
    hooks:
      %{ for hook in repo.hooks ~}
      - id: ${hook.id}
        %{ if hook.args ~}args: ${hook.args}%{ endif ~}
      %{ endfor ~}
  %{ endfor ~}
