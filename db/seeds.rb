# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@professions = ["Programmer", "Baker", "Plumber", "Hunter", "Doctor", "Terminater"]

User.create(first_name: "Matt",
            last_name: "O'Connell",
            email: "matthew.j.oconnell1@gmail.com",
            password: "testtest",
            password_confirmation: "testtest",
            profession: "Space Cowboy")

User.create(first_name: "Alex",
            last_name: "Codreanu",
            email: "alexcodreanu86@gmail.com",
            password: "12345678",
            password_confirmation: "12345678",
            profession: "Love Doctor")


10.times do
  User.create(first_name: Faker::Name.name,
              last_name: Faker::Name.name,
              email: Faker::Internet.email,
              password: "testtest",
              password_confirmation: "testtest",
              profession: @professions.sample )
end

@events = ["Cupcake Baking", "Learn to be awesome", "Learn To Program", "Hike Mt. Everest", "Squirrel Herding 101", "Basic's of Otter Fighting"]
3.times do |i| 
  User.all.each do |user|
    Event.create(user_id: user.id,
                 title: @events.sample,
                 description: Faker::Lorem.paragraph, 
                 starts_at: "2014-03-06 15:53:57 -0600", 
                 ends_at: "2014-03-06 16:19:37 -0600", 
                 max_attendees: rand(1..6))
  end
end