#!/bin/bash
# 変更を GitHub に push して GitHub Pages に反映する（1分ほどで公開URLが更新される）
set -e
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-update}" || true
git push origin main
echo "公開URL: https://tmurakoshi.github.io/route-drive/"
