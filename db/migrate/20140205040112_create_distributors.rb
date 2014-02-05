class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :rep, :null => false
      t.string :telephone, :null => false
      t.string :email

      t.timestamps
    end
  end
end
