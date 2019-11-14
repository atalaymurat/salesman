class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :middle
      t.string :family

      t.timestamps
    end
  end
end
