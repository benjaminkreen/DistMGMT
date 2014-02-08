ActiveRecord::Base.transaction do
  
  Company.create!(:name => "Everbrew")
  
  Distributor.create!(
    :rep => Faker::Name.name,
    :telephone => Faker::PhoneNumber.phone_number,
    :email => Faker::Internet.email,
    :company_id => 1
  )
  
  5.times do
    Account.create!(
      :distributor_id => 1,
      :creator_id => 1,
      :last_modifier_id => 1, 
      :name => Faker::Company.name,
      :city => Faker::Address.city,
      :state => Faker::Address.state_abbr,
      :contact => Faker::Name.name,
      :opportunities => Faker::Lorem.sentence
    )
  end
end