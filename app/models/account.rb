class Account < ActiveRecord::Base
  attr_accessible :name, :city, :state, :contact, :opportunities, :distributor_id,
  :creator_id, :last_modifier_id
  
  belongs_to :distributor
  has_many :sales
end
