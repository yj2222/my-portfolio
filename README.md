## Discription

This is my portfolio site.

## Usage

coming soon...

## DB設計

## portfoliosテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|environment|string|null: false|

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|portfolio_id|references|null: false,index: true,foreign_key: true|
