# テーブル設計


<!-- userテーブル -->

| Column             | Type   | Options                  |
| ------------------ | ------ | ----------- -----------  |
| name               | string | null: false              |
| email              | string | null: false unique: true |
| encrypted_password | string | null: false              |
|  profile           |  text  | null: false              |
|  occupation        |  text  | null: false              |
|  position          |  text  | null: false              |

<!-- Association -->
- has_many :comments
- has_many :prototypes

<!-- commentsテーブル -->

| Column             | Type       | Options                        |
| ------------------ | ------ ----| ----------- -----------        |
| content            | text       | null: false                    |
| prototype          | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

<!-- Association -->
- belong to :user
- belong to :prototype

<!-- prototypesテーブル -->
| Column             | Type       | Options                        |
| ------------------ | ------ ----| ----------- -----------        |
| title              | string     | null: false                    |
| catch_copy         | text       | null: false                    |
| concept            | text       | null: false                    |
| user               |references  | null: false, foreign_key: true |

<!-- Association -->
- has_many :comments
- belong to :user