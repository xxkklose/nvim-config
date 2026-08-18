# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Requirements

- Neovim 0.11.2 or newer
- Git 2.19 or newer
- Node.js 22 or newer for Copilot
- `tree-sitter` CLI on `PATH`

## Update

Update plugins, Tree-sitter parsers, and the reproducible lock file:

```sh
./scripts/update.sh
```

Then review and publish the configuration changes:

```sh
git status
git diff
git add -A
git commit -m "update Neovim configuration"
git push origin lazy_vim
```

Markdown linting and formatting use `.markdownlint.json` from this repository
as their global base configuration, regardless of the directory from which
Neovim is started. A project-local markdownlint file may still override it.
