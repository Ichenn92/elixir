class AddActivityToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :activity, null: true, foreign_key: true
  end
end
