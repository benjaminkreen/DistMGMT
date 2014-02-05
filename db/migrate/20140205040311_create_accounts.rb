class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :creator_id, :null => false
      t.integer :last_modifier_id, :null => false
      t.string :name, :null => false
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :contact, :null => false
      t.text :opportunities

      t.timestamps
    end
  end
end
