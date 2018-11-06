class ChangeCnpjType < ActiveRecord::Migration[5.2]
  def change
    change_column :laundries, :cnpj, :integer
  end
end
