# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i| 
  Event.create(user_id: 1,
               title: "Event#{1 + i}",
               description: "Cool event#{1 + i}", 
               starts_at: "2014-03-06 15:53:57 -0600", 
               ends_at: "2014-03-06 16:19:37 -0600", 
               max_attendees: rand(6))
end