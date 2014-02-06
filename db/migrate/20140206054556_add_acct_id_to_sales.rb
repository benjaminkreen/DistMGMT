class AddAcctIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :account_id, :integer
  end
end
