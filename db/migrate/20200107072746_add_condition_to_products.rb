class AddConditionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :offer_type, :string
    add_column :products, :condition, :string
  end
end
