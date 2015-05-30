# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

10.times do
  Customer.create(
    contact_person: Faker::Name.name,
    organization: Faker::Company.name,
    cc_number: Faker::Business.credit_card_number,
    cc_expire_date: Faker::Business.credit_card_expiry_date,
    cc_type: Faker::Business.credit_card_type,
    primary_phone: Faker::PhoneNumber.cell_phone,
    primary_email: Faker::Internet.email
  )
end

20.times do
  Location.create(
    customer_id: rand(1..10),
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
  )
end
