class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :item_code
      t.string :description
      t.decimal :unit_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
