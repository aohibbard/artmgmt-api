# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

0.times do
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.unique.email, date_of_birth: Faker::Date.in_date_period(year: 1980, month: 9), password_digest: "password")
end 

20.times do 
    Artist.create(first_name: Faker::Artist.name, last_name: Faker::Artist.name, nationality: Faker::Nation.nationality, date_of_birth: Faker::Date.in_date_period(year: 1980, month: 9))
end 

10.times do
    Exhibition.create(title: "An Exhibition of Nothing", location: Faker::Address.city, host: "Museum of Modern Art", start_date: Faker::Date.in_date_period(year: 1999, month: 2), end_date: Faker::Date.in_date_period(year: 1999, month: 6))
end

80.times do 
    Artwork.create(title: "Untitled", year: Random.new.rand(1980..2020), medium: "oil on canvas", notes: "Fragile", location: "Museum of Modern Art, Zagreb", artist_id: Random.new.rand(1..20), exhibition_id: Random.new.rand(1..10))
end