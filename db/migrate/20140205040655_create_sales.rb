class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :quantity, :null => false
      t.string :unit, :null => false
      t.string :type, :null => false

      t.timestamps
    end
  end
end
