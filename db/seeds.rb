# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@professions = ["Programmer", "Baker", "Plumber", "Hunter", "Doctor", "Terminater"]
@dates = [{ starts_at: "2014-04-06 15:53:57 -0600", 
            ends_at: "2014-03-08 21:19:37 -0600" },
          { starts_at: "2014-03-02 15:53:57 -0600", 
            ends_at: "2014-03-03 21:19:37 -0600" },
          { starts_at: "2014-03-24 15:53:57 -0600", 
            ends_at: "2014-03-26 21:19:37 -0600" },
          { starts_at: "2014-03-31 15:53:57 -0600", 
            ends_at: "2014-04-02 21:19:37 -0600" },
          { starts_at: "2014-03-18 15:53:57 -0600", 
            ends_at: "2014-03-20 21:19:37 -0600" },
          { starts_at: "2014-03-16 15:53:57 -0600", 
            ends_at: "2014-03-17 21:19:37 -0600" },
          { starts_at: "2014-03-09 15:53:57 -0600", 
            ends_at: "2014-03-11 21:19:37 -0600" }]

@addresses = ["4001 Dutchmans Lane, Louisville, KY 40207", "1901 W Madison St, Chicago, IL 60612",
               "1410 Museum Campus Dr, Chicago, IL 60605", "233 S Wacker Dr, Chicago, IL 60606",
               "875 N Michigan Ave, Chicago, IL 60611", "1060 W Addison St, Chicago, IL 60613",
               "333 W 35th St, Chicago, IL 60616", "720 S Michigan Ave, Chicago, IL 60605"]

User.create(first_name: "Matt",
            last_name: "O'Connell",
            email: "matthew.j.oconnell1@gmail.com",
            password: "testtest",
            password_confirmation: "testtest",
            profession: "Space Cowboy")

User.create(first_name: "Alex",
            last_name: "Codreanu",
            email: "alexcodreanu86@gmail.com",
            password: "testtest",
            password_confirmation: "testtest",
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
    Event.create({user_id: user.id,
                 title: @events.sample,
                 description: Faker::Lorem.paragraph, 
                 location: @addresses.sample,
                 max_attendees: rand(1..6)}
                 .merge(@dates.sample))
  end
end