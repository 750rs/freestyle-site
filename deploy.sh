#!/bin/bash
# freestyle LP 更新用スクリプト
# 使い方: ./deploy.sh "更新内容のメモ"

set -e

cd "$(dirname "$0")"

# 引数があればコミットメッセージに、なければ "update" を使う
MSG="${1:-update}"

# 変更があるかチェック
if [ -z "$(git status --porcelain)" ]; then
  echo "変更がありません。何も commit/push しません。"
  exit 0
fi

echo "=> 変更内容:"
git status --short
echo ""

git add .
git commit -m "$MSG"
git push

echo ""
echo "✅ push 完了。1〜2分で Netlify のサイトに反映されます。"
echo "   Netlify ダッシュボード: https://app.netlify.com/"
