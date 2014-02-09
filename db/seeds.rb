ActiveRecord::Base.transaction do
  
  User.create!({
    :email => "test@test.com",
    :password => "password",
    :company_id => 1
  })
  
  Company.create!(:name => "Everbrew")
  
  3.times do
    Distributor.create!(
      :rep => Faker::Name.name,
      :telephone => Faker::PhoneNumber.phone_number,
      :email => Faker::Internet.email,
      :company_id => 1
    )
  end
  
  3.times do |i|
    dist_id = i + 1
    5.times do
      Account.create!(
        :distributor_id => dist_id,
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
end