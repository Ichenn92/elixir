class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :friend_id, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
