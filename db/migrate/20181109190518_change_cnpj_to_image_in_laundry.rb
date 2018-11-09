class ChangeCnpjToImageInLaundry < ActiveRecord::Migration[5.2]
  def change
    rename_column :laundries, :cnpj, :image
  end
end
