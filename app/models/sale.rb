class Sale < ActiveRecord::Base
  attr_accessible :quantity, :type, :unit
  
  belongs_to :account
end
