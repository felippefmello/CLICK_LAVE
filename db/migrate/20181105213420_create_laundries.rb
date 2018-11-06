class CreateLaundries < ActiveRecord::Migration[5.2]
  def change
    create_table :laundries do |t|
      t.string :name
      t.string :address
      t.string :CNPJ
      t.integer :price_kg
      t.integer :rating
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
