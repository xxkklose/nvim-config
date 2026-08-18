#!/usr/bin/env bash

set -euo pipefail

config_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

for executable in git nvim node tree-sitter; do
  if ! command -v "$executable" >/dev/null 2>&1; then
    echo "Missing required executable: $executable" >&2
    exit 1
  fi
done

if ! node -e 'process.exit(Number(process.versions.node.split(".")[0]) >= 22 ? 0 : 1)'; then
  echo "Node.js 22 or newer is required by copilot.lua." >&2
  exit 1
fi

nvim --headless "+Lazy! sync" +qa
nvim --headless \
  "+Lazy load nvim-treesitter" \
  "+lua require('nvim-treesitter').update():wait(300000)" \
  +qa

git -C "$config_dir" status --short
