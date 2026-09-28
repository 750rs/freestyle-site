# freestyle ランディングページ

名古屋市南区の原状回復工事「freestyle」（吉岡憲志郎）のランディングページ。

## 公開先

Netlify にデプロイ。`main` ブランチに push すると自動で再デプロイされる。

- 本番URL: https://freestyle-nagoya.netlify.app
- Netlify管理画面: https://app.netlify.com/projects/freestyle-nagoya
- GitHubリポジトリ: https://github.com/750rs/freestyle-site

## ディレクトリ構成

```
freestyle-site/
├── index.html                  # トップページ（LP本体）
├── cross/index.html            # クロス張替え（単価・相場・6畳の費用例）
├── cushion-floor/index.html    # クッションフロア張替え
├── floor-tile/index.html       # フロアタイル張替え
├── house-cleaning/index.html   # ハウスクリーニング・エアコン洗浄
├── tachiai/index.html          # 退去立会代行
├── genjo-kaifuku/index.html    # 原状回復工事ガイド（オーナー向け解説）
├── company/index.html          # 会社概要・代表プロフィール
├── area/{minami,minato,atsuta,nakagawa}/index.html  # 区別ページ
├── assets/sub.css              # サブページ共通CSS（index.html は独自のCSSを内包）
├── img/                        # ロゴ・OG画像・施工写真
├── sitemap.xml / robots.txt    # 検索エンジン向け
├── netlify.toml                # Netlify設定（リダイレクト・キャッシュ・セキュリティヘッダー）
├── SEO対策チェックリスト.md      # サイト外でやるSEO作業の手順（Search Console・ビジネスプロフィール等）
├── README.md                   # このファイル
├── deploy.sh                   # 更新用ショートカットスクリプト
└── .gitignore
```

サブページの単価・電話番号などを変える場合は、該当ページの `index.html` を直接編集すればOK。
全ページ共通のフッター・ナビを変える場合は各ページに同じ変更を入れる（Claude に「全ページのフッターの◯◯を変えて」と頼むのが早い）。

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
