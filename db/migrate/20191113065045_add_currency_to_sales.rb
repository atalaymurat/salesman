class AddCurrencyToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :currency, :string
    add_column :sales, :offer_no, :string
  end
end
