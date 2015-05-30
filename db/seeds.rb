# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
def sex
  ['male','female','other'].sample
end

def zip_code
  %w(44101 44105 44114 44111).sample
end

30.times do
  Interaction.create(
    officer_name: Faker::Name.name,
    officer_badge: Faker::Lorem.characters(5),
    organization: Faker::Company.name,
    zip_code: zip_code,
    reporter_name: Faker::Name.name,
    reporter_sex: sex,
    reporter_phone: Faker::PhoneNumber.cell_phone,
    reporter_age: rand(16..75),
    comment: Faker::Lorem.sentence,
    status: Faker::Lorem.word
  )
end


