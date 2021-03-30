class AddGroupToGroup < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :group?, :boolean, default: true
  end
end
