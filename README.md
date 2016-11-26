# db_design

### usersテーブル

|column|
|:--|
|id|
|name|
|main_address|
|password|
|password_confirmation|
|timestamp|

### messagesテーブル

|column|
|:--|
|id|
|text|
|image|
|user_id|
|chat_group_id|
| timestamp|

### chat_groupsテーブル

|column|
|:--|
|id|
|name|

### group_membersテーブル

|column|
|:--|
|user_id|
|chat_group_id|

## association

### usersテーブル
+ has_many group_memvers
+ has_many messages

### messagesテーブル
+ belongs_to user
+ belongs_to chat_group

### chat_groupsテーブル
+ has_many messages
+ has_many group_members

### group_membersテーブル
+ belongs_to user
+ belongs_to chat_group
