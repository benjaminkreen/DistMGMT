class Account < ActiveRecord::Base
  attr_accessible :name, :city, :state, :contact, :opportunities
  
  belongs_to :distributor
end
