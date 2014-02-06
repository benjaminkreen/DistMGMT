class AddDistIdToAcct < ActiveRecord::Migration
  def change
    add_column :accounts, :distributor_id, :integer
  end
end
