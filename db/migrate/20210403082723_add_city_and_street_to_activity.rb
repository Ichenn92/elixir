class AddCityAndStreetToActivity < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :city, :string
    add_column :activities, :street, :string
  end
end
