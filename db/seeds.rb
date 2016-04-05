50.times do
  Company.create(
                :name => Faker::Company.name,
                :catchphrase => Faker::Company.catch_phrase,
                :ein => Faker::Company.ein,
                :logo => Faker::Company.logo
                )
end

100.times do
  Address.create(
    :address_1 => Faker::Address.street_address,
    :address_2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip => Faker::Address.zip_code, 
    :company_id => rand(1..50)
  )
end