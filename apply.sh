#!/bin/bash
# 使い方: bash apply.sh "/path/to/wise-english-portal"
# feature/eiken-trainer ブランチを取り込んで GitHub に push します。main（本番）は変更しません。
set -e
REPO="${1:?wise-english-portal のフォルダを指定してください}"
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO"
git fetch origin main
git fetch "$HERE/wise-english-portal.bundle" feature/eiken-trainer:feature/eiken-trainer
git push -u origin feature/eiken-trainer
echo "完了: feature/eiken-trainer を push しました。GitHub で PR を作ると Vercel のプレビューが付きます。"
