class ChangeCompanyToCompanyTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :sales, :company, :company_title
  end
end
