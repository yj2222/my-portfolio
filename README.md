## Name

my-portfolio

====

This is my portfolio site.

## environment
  ・ruby2.5.1
  ・rails5.2.3
  ・Haml記法
  ・scss
  ・jquery(rails)1.12.4
  ・S3
  ・MYSQL

## Description

  ・未ログインユーザの記事の参照
  ・deviseを使ったログイン機能
  ・ログイン後の新規記事の投稿
  ・記事の編集
  ・記事の削除
  ・複数枚画像投稿、編集（▲）
  ・Rspecを使った単体テスト（▲）
  ・Rspecを使った統合テスト（▲）
  ※（▲→未実装。現在実装中の機能。）

## Usage

  ・記事の参照(ログイン状態関係なく可能)
    ・記事をクリックすると、詳細のモーダルウインドウが表示されます。
      <img width="400" alt="2" src="https://user-images.githubusercontent.com/50900728/62341352-f0320600-b51d-11e9-8b76-384f23701e43.png">
    ・モーダルウインドウの下の方にはgithubとアプリのURLが掲載されています。
      <img width="400" alt="3" src="https://user-images.githubusercontent.com/50900728/62341453-6b93b780-b51e-11e9-8f8e-4080ba39d13c.png">
    ・以下、参照のイメージ動画
      <img width="400" alt="1" src="https://user-images.githubusercontent.com/50900728/62341492-954cde80-b51e-11e9-82e1-6dbd943e7901.gif">
  
  ・ログイン（管理者用ページへ遷移）
    ・管理者用Email→kanri@example.com
    ・管理者用Password→kanri1
    ・右上の管理者ログインからログイン画面へ遷移できます。
      <img width="400" alt="4" src="https://user-images.githubusercontent.com/50900728/62341654-16a47100-b51f-11e9-92bf-f48642eb3f02.jpg">
    ・ログイン画面から、上記のEmailとパスワードを入力しログインしてください。
      <img width="400" alt="5" src="https://user-images.githubusercontent.com/50900728/62341729-51a6a480-b51f-11e9-8938-761df12926e4.jpg">

  ・新規記事投稿
    ・ログイン後、トップページの右上の表示がログイン前と変わります。
    ・右上の”新規投稿”から記事の投稿ができます。
      <img width="400" alt="6" src="https://user-images.githubusercontent.com/50900728/62341864-c7127500-b51f-11e9-8a6d-51f31b08adf4.jpg">
    ・クリック後、以下のようなページに遷移します。
      <img width="400" alt="7" src="https://user-images.githubusercontent.com/50900728/62341955-296b7580-b520-11e9-82cb-0a3bdeb7e5e5.jpg">
    ・全項目を入力後、一番下のSendを押すと、投稿が完了します。
    ・以下、使用イメージ動画です。
      <img width="400" alt="8" src="https://user-images.githubusercontent.com/50900728/62342089-941cb100-b520-11e9-9784-6cb744788a9e.gif">
  
  ・記事の削除
    ・記事を投稿したあと、トップ画面には投稿した記事が表示されています。
      <img width="400" alt="9" src="https://user-images.githubusercontent.com/50900728/62342221-0f7e6280-b521-11e9-8fc2-0a4211ef561e.png">
    ・また、ログイン状態なので、編集と削除のボタンが表示されています。
    ・削除ボタンを押すと記事の削除が完了します。
    ・以下、使用イメージ動画です。
      <img width="400" alt="10" src="https://user-images.githubusercontent.com/50900728/62342313-5a987580-b521-11e9-87bb-a5d52bdd31ab.gif">
      
  ・記事の編集（▲現在実装中の機能です。）
    ・削除同様、編集のボタンから記事の編集ができます。

## DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|passward|string|null: false|

### Association
- has_many :portfolios

## portfoliosテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|sub_title|string|null: false|
|top_image|string|null: false|
|environment|text|null: false|
|discription|text|null: false|
|usage|text|null: false|
|github_url|string|null: false|
|app_url|string|null: false|
|user_id|references|null: false, index: true, foreign_key: true|

### Association
- belongs_to :user
- has_many :images

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|portfolio_id|references|null: false,index: true,foreign_key: true|

### Association
- belongs_to :portfolio
