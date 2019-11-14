class AddFieldsToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :payment, :text
    add_column :sales, :delivery_condition, :text
    add_column :sales, :delivery_time, :string
    add_column :sales, :offer_type, :string
    add_reference :sales, :person, foreign_key: true
  end
end
