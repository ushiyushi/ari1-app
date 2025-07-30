# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| nickname            | string  | null: false |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false |
| age                 | integer | null: true  |
| occupation          | string  | null: true  |
| prefecture_id       | integer | null: true  |
| strong_category_id  | integer | null: true  |


### Association

- has_many :questions
- has_many :comments


## questions テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| text         | text       | null: false                    |
| category_id  | integer    | null: true                     |
| deadline     | date       | null: true                     |
| user         | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- has_many   :comments


## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text         | text       | null: false                    |
| user         | references | null: false, foreign_key: true |
| question     | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- belongs_to :questions