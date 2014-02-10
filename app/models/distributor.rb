class Distributor < ActiveRecord::Base
  attr_accessible :rep, :telephone, :company_id, :email
  
  has_many :accounts
  
  accepts_nested_attributes_for :accounts
  
  belongs_to :company
  
  def company_name
    self.company.name
  end
end
