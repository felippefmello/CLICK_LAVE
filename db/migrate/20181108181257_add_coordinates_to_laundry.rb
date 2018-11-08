class AddCoordinatesToLaundry < ActiveRecord::Migration[5.2]
  def change
    add_column :laundries, :latitude, :float
    add_column :laundries, :longitude, :float
  end
end
