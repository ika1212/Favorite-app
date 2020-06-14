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

## DEMO
- 投稿機能 ![demo](https://user-images.githubusercontent.com/64077722/84585203-39dec300-ae48-11ea-8d7c-7582a872c492.gif)


## 制作背景
 新型コロナウィルスのため、外出自粛生活の中、家にいる時間が増えました。家にいる時間、自分で制作したものや、新しく始めたことを友人や、大切な人と共有できるアプリを開発したいと考え、Favorite-appを開発しました。


## 工夫したポイント
 幅広年代の方にも利用してもらえるよう、画像・文章を見やすくするため、大きさや配置を工夫しました。

## 使用技術
![ruby](https://user-images.githubusercontent.com/64077722/84582964-042ce080-ae2e-11ea-82b5-b27e05716a97.png)
![rails ](https://user-images.githubusercontent.com/64077722/84582977-31798e80-ae2e-11ea-9b3c-457f8a7cdb2d.png)
![html](https://user-images.githubusercontent.com/64077722/84582991-61c12d00-ae2e-11ea-8cd8-e04a29abc4be.jpg)
![sass](https://user-images.githubusercontent.com/64077722/84583051-0cd1e680-ae2f-11ea-9f5a-a64083f64be8.png)
![mysql](https://user-images.githubusercontent.com/64077722/84583040-f035ae80-ae2e-11ea-9e9a-5c981bb0a19c.png)


## 課題や今後実装したい機能
 現状の課題として、ログインした場合に投稿欄の下に、マイページ、ユーザー一覧、投稿一覧が表示されています。それらを分かりやすくするために、レイアウトを新しく作っていきます。そして、今後実装したい機能は、タグ機能、検索機能、投稿の非同期化を実装していきたいと思っています。

## 📄DB設計
<img width="791" alt="ceae79380dd4122e5a3a3f383ac43a94" src="https://user-images.githubusercontent.com/64077722/84585852-dad07c80-ae4e-11ea-9f1d-c0ef7e078910.png">

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


