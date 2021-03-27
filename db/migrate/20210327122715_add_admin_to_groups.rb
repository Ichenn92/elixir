class AddAdminToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :admin, :boolean
  end
end
