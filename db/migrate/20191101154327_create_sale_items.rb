class CreateSaleItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_items do |t|
      t.string :code
      t.string :description
      t.decimal :price
      t.integer :qty
      t.references :sale, foreign_key: true

      t.timestamps
    end
  end
end
