class AddFieldsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :model_code, :string
    add_column :products, :model_year, :integer
    add_reference :products, :brand, foreign_key: true
  end
end
