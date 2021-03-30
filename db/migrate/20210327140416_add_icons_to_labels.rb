class AddIconsToLabels < ActiveRecord::Migration[6.1]
  def change
    add_column :labels, :icon, :string
  end
end
