class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :company
      t.string :address
      t.string :status
      t.decimal :discount
      t.decimal :vat

      t.timestamps
    end
  end
end
