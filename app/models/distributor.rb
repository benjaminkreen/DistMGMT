class Distributor < ActiveRecord::Base
  attr_accessible :rep, :telephone, :company_id, :email
  
  belongs_to :company
end
