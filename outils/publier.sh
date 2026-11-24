#!/usr/bin/env bash
# Construit le site et le publie sur la branche gh-pages (GitHub Pages : Deploy from a branch → gh-pages).
set -euo pipefail
cd "$(dirname "$0")/.."
npm run build
touch dist/.nojekyll
cd dist
git init -q -b gh-pages
git add -A
git -c user.name="Hicham Bakir" -c user.email="hbakir@users.noreply.github.com" commit -q -m "Publication $(date -u +%FT%TZ)"
git push -f "$(git -C .. remote get-url origin)" gh-pages
rm -rf .git
