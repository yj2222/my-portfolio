## Name

my-portfolio

====

This is my portfolio site.
<br>
## environment
  ・ruby2.5.1<br>
  ・rails5.2.3<br>
  ・Haml記法<br>
  ・scss<br>
  ・jquery(rails)1.12.4<br>
  ・S3<br>
  ・MYSQL<br>

## Description

  ・未ログインユーザの記事の参照<br>
  ・deviseを使ったログイン機能<br>
  ・ログイン後の新規記事の投稿<br>
  ・記事の編集（▲）<br>
  ・記事の削除<br>
  ・Rspecを使った単体テスト（▲）<br>
  ・Rspecを使った統合テスト（▲）<br>
  ※（▲→未実装。現在実装中の機能。）<br>

## Usage

  ・記事の参照(ログイン状態関係なく可能)<br>
    ・記事をクリックすると、詳細のモーダルウインドウが表示されます。<br>
      <img width="400" alt="2" src="https://user-images.githubusercontent.com/50900728/62341352-f0320600-b51d-11e9-8b76-384f23701e43.png"><br>
    ・モーダルウインドウの下の方にはgithubとアプリのURLが掲載されています。<br>
      <img width="400" alt="3" src="https://user-images.githubusercontent.com/50900728/62341453-6b93b780-b51e-11e9-8f8e-4080ba39d13c.png"><br>
    ・以下、参照のイメージ動画<br>
      <img width="400" alt="1" src="https://user-images.githubusercontent.com/50900728/62341492-954cde80-b51e-11e9-82e1-6dbd943e7901.gif"><br><br>
  
  ・ログイン（管理者用ページへ遷移）<br>
    ・管理者用Email→kanri@example.com<br>
    ・管理者用Password→kanri1<br>
    ・右上の管理者ログインからログイン画面へ遷移できます。<br>
      <img width="400" alt="4" src="https://user-images.githubusercontent.com/50900728/62341654-16a47100-b51f-11e9-92bf-f48642eb3f02.jpg"><br>
    ・ログイン画面から、上記のEmailとパスワードを入力しログインしてください。<br>
      <img width="400" alt="5" src="https://user-images.githubusercontent.com/50900728/62341729-51a6a480-b51f-11e9-8938-761df12926e4.jpg"><br><br>

  ・新規記事投稿<br>
    ・ログイン後、トップページの右上の表示がログイン前と変わります。<br>
    ・右上の”新規投稿”から記事の投稿ができます。<br>
      <img width="400" alt="6" src="https://user-images.githubusercontent.com/50900728/62341864-c7127500-b51f-11e9-8a6d-51f31b08adf4.jpg"><br>
    ・クリック後、以下のようなページに遷移します。<br>
      <img width="400" alt="7" src="https://user-images.githubusercontent.com/50900728/62341955-296b7580-b520-11e9-82cb-0a3bdeb7e5e5.jpg"><br>
    ・全項目を入力後、一番下のSendを押すと、投稿が完了します。<br>
    ・以下、使用イメージ動画です。<br>
      <img width="400" alt="8" src="https://user-images.githubusercontent.com/50900728/62342089-941cb100-b520-11e9-9784-6cb744788a9e.gif"><br><br>
  
  ・記事の削除<br>
    ・記事を投稿したあと、トップ画面には投稿した記事が表示されています。<br>
      <img width="400" alt="9" src="https://user-images.githubusercontent.com/50900728/62342221-0f7e6280-b521-11e9-8fc2-0a4211ef561e.png"><br>
    ・また、ログイン状態なので、編集と削除のボタンが表示されています。<br>
    ・削除ボタンを押すと記事の削除が完了します。<br>
    ・以下、使用イメージ動画です。<br>
      <img width="400" alt="10" src="https://user-images.githubusercontent.com/50900728/62342313-5a987580-b521-11e9-87bb-a5d52bdd31ab.gif"><br><br>
      
  ・記事の編集（▲現在実装中の機能です。）<br>
    ・削除同様、編集のボタンから記事の編集ができます。<br>

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
