# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Breed.create(breed: 'Australian Shepherd')
Breed.create(breed: 'Border Collie')
Breed.create(breed: 'Jack Russell')
Breed.create(breed: 'Pit Bull')
Breed.create(breed: 'Shih-tzu')
Breed.create(breed: 'Standard Poodle')
Breed.create(breed: 'Miniature Poodle')
Breed.create(breed: 'Doberman')
Breed.create(breed: 'Bulldog')
Breed.create(breed: 'Malamute')
Breed.create(breed: 'Eskimo')
Breed.create(breed: 'Chihuahua')
Breed.create(breed: 'Yorkie')
Breed.create(breed: 'Boxer')



5.times do |owner|
  Owner.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, primary_phone: Faker::PhoneNumber.phone_number, emerg_name: Faker::Name.name, emerg_phone: Faker::PhoneNumber.phone_number)
end



categories = Category.create([{name: 'toys'}, {name:'treats'},
  {name: 'food'}, {name: 'accessories'}])

