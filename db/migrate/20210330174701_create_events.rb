class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :activity, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
