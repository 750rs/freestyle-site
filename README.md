# freestyle ランディングページ

名古屋市南区の原状回復工事「freestyle」（吉岡憲志郎）のランディングページ。

## 公開先

Netlify にデプロイ。`main` ブランチに push すると自動で再デプロイされる。

- 本番URL: （デプロイ後に追記）

## ディレクトリ構成

```
freestyle-site/
├── index.html      # LP本体（このファイルを編集すれば内容が変わる）
├── README.md       # このファイル
├── deploy.sh       # 更新用ショートカットスクリプト
└── .gitignore
```

## 更新手順

### 簡単な方法（おすすめ）

ターミナルで以下を実行するだけ。`deploy.sh` がすべてやってくれる。

```sh
cd ~/freestyle-site
./deploy.sh "更新内容のメモ"
```

例:
```sh
./deploy.sh "電話番号を更新"
./deploy.sh "料金表を修正"
```

引数を省略すると `update` というメモで commit される。

### 手動でやる場合

```sh
cd ~/freestyle-site
git add .
git commit -m "更新内容のメモ"
git push
```

push してから 1〜2分で Netlify のサイトに反映される。

## トラブル時のメモ

- **push でエラーが出た**: `gh auth status` で GitHub の認証が切れていないか確認。切れていたら `gh auth login` を再実行。
- **Netlify でデプロイが失敗した**: Netlify ダッシュボードの「Deploys」タブでログを確認。
- **HTML をローカルで確認したい**: `open index.html` でブラウザが開く。

## 将来、独自ドメインを使うとき

1. ドメインを取得（お名前.com、ムームードメインなど）
2. Netlify ダッシュボード → Domain settings → Add custom domain
3. ドメイン側のDNS設定を Netlify が指定するレコードに変更

詳細は Netlify のヘルプ参照: https://docs.netlify.com/domains-https/custom-domains/
