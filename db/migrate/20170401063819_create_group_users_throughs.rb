class CreateGroupUsersThroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :group_users_throughs do |t|
      t.references :user
      t.references :group
      t.timestamps
    end
  end
end
