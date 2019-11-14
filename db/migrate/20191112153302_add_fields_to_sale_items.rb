class AddFieldsToSaleItems < ActiveRecord::Migration[5.2]
  def change
    add_column :sale_items, :currency, :string
    add_column :sale_items, :brand, :string
  end
end
