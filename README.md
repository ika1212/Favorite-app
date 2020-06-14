# Favorite-app
![見出し画像](https://user-images.githubusercontent.com/64077722/84566347-4a8d2b80-adab-11ea-9101-a5ec975e06bd.jpg)

## 概要
- ユーザー新規登録、ログイン、ログアウト機能
- 投稿機能
- 投稿削除機能
- いいね機能
- マイページ機能　（投稿内容、いいねした投稿）
- ユーザー一覧
- 投稿一覧

## 制作過程
-新型コロナウィルスのため、外出自粛生活の中、家にいる時間が増えました。家にいる時間、自分で制作したものや、新しく始めたことを友人や、大切な人と共有できるアプリを開発したいと考え、Favorite-appを開発しました。


## 工夫したポイント
-幅広年代の方にも利用してもらえるよう、画像・文章を見やすくするため、大きさや配置を工夫しました。

## 使用技術





## 課題や今後実装したい機能


## 📄DB設計
## usersモデル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null:false, unique:true|
|Email|text|null: false, unique: true|
|password|text|null: false|
### Association
- has_many :posts
- has_many :likes

## postsモデル
|Column|Type|Options|
|------|----|-------|
|body|text|null:false|
|image|string||
### Association
- belongs_to: user
- has_many :posts_tags
- has_many :tags, through: :posts_tags
- has_many :likes

## likesモデル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post


