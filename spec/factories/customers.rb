FactoryGirl.define do
  factory :customer do
    contact_person Faker::Name.name
    organization Faker::Company.name
    cc_number Faker::Business.credit_card_number
    cc_expire_date Faker::Business.credit_card_expiry_date
    cc_type Faker::Business.credit_card_type
    primary_phone Faker::PhoneNumber.phone_number
    primary_email Faker::Internet.email
  end
end
