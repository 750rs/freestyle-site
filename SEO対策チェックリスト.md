# 検索上位を狙うための作業チェックリスト（吉岡さん用）

サイト側（このリポジトリ）でできる対策は 2026-09-28 の更新で実施済みです。
**ここから先は、サイトの外で吉岡さんご本人にしかできない作業**です。上から順にやってください。
どれも無料で、所要時間は合計2〜3時間程度です。

> 前提として正直に書きます。「クロス張替え 名古屋」のような大きなキーワードで、
> くらしのマーケット・ミツモア・有希ホーム・伊藤畳商店など長年運営されているサイトを
> 数週間で抜くことは、どんな業者に頼んでもできません。
> まず狙うのは **「名古屋 クロス張替え オーナー直受け」「名古屋市南区 クロス張替え」「原状回復 名古屋 大家」
> のような具体的な検索**で1位を取り、そこから徐々に大きなキーワードに広げる流れになります。
> 下の作業を全部やると、その土台がそろいます。

---

## 【最優先・当日中】1. Google Search Console に登録して sitemap を送信する

サイトを Google に「正式に」認識させ、インデックス状況・検索順位・クリック数が見えるようになります。
**これをやらないと、何が効いているか一切わかりません。**

1. https://search.google.com/search-console にアクセス（freestyle.yoshioka@gmail.com でログイン）
2. 「プロパティを追加」→「URLプレフィックス」を選び `https://freestyle-nagoya.netlify.app/` を入力
3. 所有権の確認は「HTMLタグ」を選ぶ → `<meta name="google-site-verification" content="XXXX">` という1行が表示される
4. その1行をコピーして Claude（またはこのリポジトリ）に渡す → `index.html` の `<head>` に追加して push（Claude に「この確認タグを入れて」と言えばOK）
5. Search Console に戻って「確認」を押す
6. 左メニュー「サイトマップ」→ `sitemap.xml` と入力して送信
7. 左メニュー「URL検査」→ 以下の12ページを1つずつ入力し「インデックス登録をリクエスト」
   - `https://freestyle-nagoya.netlify.app/`
   - `https://freestyle-nagoya.netlify.app/cross/`
   - `https://freestyle-nagoya.netlify.app/cushion-floor/`
   - `https://freestyle-nagoya.netlify.app/floor-tile/`
   - `https://freestyle-nagoya.netlify.app/house-cleaning/`
   - `https://freestyle-nagoya.netlify.app/tachiai/`
   - `https://freestyle-nagoya.netlify.app/genjo-kaifuku/`
   - `https://freestyle-nagoya.netlify.app/company/`
   - `https://freestyle-nagoya.netlify.app/area/minami/`
   - `https://freestyle-nagoya.netlify.app/area/minato/`
   - `https://freestyle-nagoya.netlify.app/area/atsuta/`
   - `https://freestyle-nagoya.netlify.app/area/nakagawa/`

- [ ] Search Console 登録・所有権確認
- [ ] sitemap.xml 送信
- [ ] 12ページのインデックス登録リクエスト

## 【最優先・当日中】2. Google ビジネスプロフィール を作る（地図検索＝地域ビジネスで最も効く）

「クロス張替え 名古屋」「原状回復 南区」と検索したとき、通常の検索結果より **上** に地図と3件の業者が出ます。
ここに入るのが、地域ビジネスで実質的な「1位」です。サイトのSEOより即効性があります。

- 手順と貼り付ける文章は `biz-photos/Googleビジネスプロフィール下書き.md` にすべて用意してあります
- ウェブサイト欄は **`https://freestyle-nagoya.netlify.app`**（このLP）にしてください。下書きでは freestyle1987.com になっていますが、LPの方が問い合わせ導線が強く、被リンクとしても効きます
- カテゴリは「内装業者」をメイン、「リフォーム業者」「ハウスクリーニングサービス」を追加
- 住所は非公開設定（サービス提供地域＝名古屋市）で問題ありません

- [ ] ビジネスプロフィール作成・オーナー確認（ハガキ or 電話）
- [ ] 説明文・営業時間・サービス5件・写真（ロゴ + 施工写真5枚）を登録
- [ ] 投稿を1件作成（下書きのパターン1）
- [ ] **口コミを集める**（下記4参照）

## 【今週中】3. freestyle1987.com からこのLPへリンクを張る

被リンク（他サイトからのリンク）は今も順位を決める最大要因のひとつです。
freestyle1987.com は既に Google に評価されている本サイトなので、そこからのリンクが最も効きます。

管理者権限がないとのことですが、以下のどれかができないか確認してください。

- [ ] トップページのお知らせ欄・ブログ投稿に「賃貸オーナー様専用ページを開設しました → https://freestyle-nagoya.netlify.app」を1件投稿する（投稿権限だけあれば可能）
- [ ] 会社概要・お問い合わせページのどこかに LP のURLを1行追加してもらう（管理者に依頼）
- [ ] それも無理なら、サイト制作会社／管理者に「オーナー向けLPへのリンクを1本追加してほしい」とメールで依頼（この1本で効果が大きく変わります）

## 【今週中】4. 口コミを5件集める

Google ビジネスプロフィールの口コミ数・評価は、地図検索の順位に直結します。

- [ ] 過去に取引のある管理会社・オーナー様 5人に、LINEで口コミ依頼を送る
  - 文面例：「いつもありがとうございます。Googleの口コミを1件いただけると助かります。こちらのリンクから30秒で書けます → （ビジネスプロフィールの口コミリンク）」
- [ ] 施工完了報告のLINEに、毎回口コミリンクを添える運用にする

## 【今週中】5. 無料の業者掲載サイト・SNSに登録して、すべてにLPのURLを載せる

被リンクと「NAP情報（名前・住所・電話）」の一貫性がローカル検索の評価になります。
**屋号は必ず「FreeStyle（フリースタイル）」、電話は 090-3165-1205 で統一**してください。

- [ ] Instagram（@naisouproject）のプロフィールリンクを LP のURLに変更
- [ ] LINE公式アカウントのプロフィール「基本情報」にウェブサイトURLを設定
- [ ] Yahoo!プレイス（無料）https://business.yahoo.co.jp/
- [ ] Bing Places for Business（無料）https://www.bingplaces.com/
- [ ] エキテン（無料掲載）
- [ ] くらしのマーケット／ミツモア（出店は任意。ただし検索1位はこれらのサイトなので「その中で上位に出る」のも戦略のひとつ）
- [ ] 名古屋市南区の商店・事業者サイトや、取引先の管理会社サイトの「協力業者」欄にLPのURL掲載を依頼

## 【1ヶ月以内・強く推奨】6. 独自ドメインを取る

今のURL `freestyle-nagoya.netlify.app` は「netlify.app の間借り」で、Google からの信頼が
独自ドメインより弱く、名刺・LINE・口コミでも覚えてもらえません。
年間1,500〜2,000円程度で `freestyle-nagoya.com` のようなドメインを取り、Netlify に設定できます
（Netlify 側の設定は README の「独自ドメインを使うとき」の通り。freestyle1987.com の管理者権限は不要です）。

- [ ] ドメイン取得（お名前.com / ムームードメイン / Cloudflare Registrar など）
- [ ] Netlify → Domain settings → Add custom domain
- [ ] 取得したドメインを Claude に伝える → サイト内のURL（canonical / sitemap / 構造化データ）を一括で置き換え、旧URLからの301リダイレクトを設定

## 【継続】7. 月1回、施工事例を1件追加する

Google は「更新されているサイト」を評価します。月1件、施工前後の写真＋3行の説明を追加するだけで十分です。
- [ ] 施工の before/after 写真を撮る習慣をつける（スマホでOK）
- [ ] 月1回、写真と「物件の区・間取り・工事内容・日数」を Claude に渡す → 事例ページに追加して push

## 【継続】8. Search Console を月1回見る

- [ ] 「検索パフォーマンス」で **表示回数が増えているのにクリックが少ないキーワード** を探す → そのキーワードでページのタイトル・見出しを調整（Claude に「この検索語で順位を上げたい」と伝える）
- [ ] 「ページ」→ インデックス未登録のページがあればリクエスト

---

## サイト側で実施済みの対策（2026-09-28）

| 対策 | 内容 |
|---|---|
| ページ数 1 → 12 | クロス／CF／フロアタイル／クリーニング／退去立会代行／原状回復ガイド／会社概要／南区・港区・熱田区・中川区 の専用ページを追加。1ページで全キーワードを狙う構造から、キーワードごとに専用ページで狙う構造に変更 |
| 内部リンク | トップページに「工事別・エリア別ページ」セクションとフッターナビを追加。全ページ相互リンク・パンくずリスト |
| 構造化データ | 各ページに Service / BreadcrumbList / FAQPage / Article / AboutPage を追加。トップの LocalBusiness に geo座標・founder・contactPoint・対応区を追加 |
| 表示速度 | ヒーローロゴ 146KB → 16KB（WebP）に軽量化・preload。画像を1年キャッシュ（netlify.toml） |
| 技術 | 重複URL（/index.html）を301で正規化、セキュリティヘッダー追加、`<main>` セマンティクス、sitemap を12ページに更新 |
| タイトル | 検索結果で切れない長さに短縮（「名古屋のクロス張替え m1,400円〜｜オーナー直受け FreeStyle」） |
