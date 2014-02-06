json.distributors do
  json.array!(@user.company.distributors.includes(:accounts)) do |distributor|
    json.(distributor, :rep, :telephone, :email)
    json.accounts do
      json.array!(distributor.accounts.includes(:sales)) do |account|
      json.(account, :name, :city, :state, :contact, :opportunities)
      json.sales do
        json.array!(account.sales) do |sale|
          json.(sale, :id, :quantity, :unit, :type)
        end
      end
    end
  end
end