# Favorite-app

# Favorite DB設計
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


