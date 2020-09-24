class AddWarantyToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :waranty, :boolean
  end
end
