# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1000.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         first_name: first_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number
#                         )

#   contact.save
# end

# Group.create!(name: 'Family')
# Group.create!(name: 'Work')
# Group.create!(name: 'Assassins')
# Group.create!(name: 'College')
# Group.create!(name: 'Grad School')
# Group.create!(name: 'Bowling')

Contact.all.each do |contact|
  ContactGroup.create!(contact_id: contact.id, group_id: rand(1..6))
end

index = 1

(Contact.count / 2).times do
  ContactGroup.create!(contact_id: index, group_id: rand(1..6))
  index += 1
end

index = 1

(Contact.count / 2).times do
  ContactGroup.create!(contact_id: index, group_id: rand(1..6))
  index += 1
end