class RenameCnpjColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :laundries, :CNPJ, :cnpj
  end
end
