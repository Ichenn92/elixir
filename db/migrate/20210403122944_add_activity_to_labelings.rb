class AddActivityToLabelings < ActiveRecord::Migration[6.1]
  def change
    add_reference :labelings, :activity, null: false, foreign_key: true
  end
end
