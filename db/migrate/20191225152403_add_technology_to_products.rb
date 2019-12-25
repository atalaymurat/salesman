class AddTechnologyToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :technology, foreign_key: true
  end
end
