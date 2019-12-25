class AddAncestryToTechnology < ActiveRecord::Migration[5.2]
  def change
    add_column :technologies, :ancestry, :string
    add_index :technologies, :ancestry
  end
end
