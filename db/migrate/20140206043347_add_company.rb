class AddCompany < ActiveRecord::Migration
  def change
    add_column :users, :company_id, :integer
    add_column :distributors, :company_id, :integer
  end
end
