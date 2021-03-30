class AddFriendshipToGroup < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :friendship, null: true, foreign_key: true
  end
end
