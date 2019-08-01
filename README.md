## Discription

This is my portfolio site.

## Usage

coming soon...

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
