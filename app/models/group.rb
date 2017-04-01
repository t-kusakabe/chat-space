class Group < ApplicationRecord
  has_many :group_users_through
  has_many :users, through: :group_users_through
end
