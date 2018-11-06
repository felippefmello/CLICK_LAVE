class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_kg
      t.boolean :status
      t.references :user, foreign_key: true
      t.references :laundry, foreign_key: true

      t.timestamps
    end
  end
end
