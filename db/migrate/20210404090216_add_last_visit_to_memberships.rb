class AddLastVisitToMemberships < ActiveRecord::Migration[6.1]
  def change
    add_column :memberships, :last_visit, :datetime
  end
end
