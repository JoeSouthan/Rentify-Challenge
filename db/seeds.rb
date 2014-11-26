# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do
  postcode_template = ["XXN NXX", "XNN NNX"] # Choose a random postcode template
  lorem_ipsum = %w(Lorem ipsum dolor sit amet consectetur adipiscing elit Praesent vel)
  random_description = "#{lorem_ipsum.sample} #{lorem_ipsum.sample}"
  random_postcode = postcode_template.sample.gsub(/N/, [*0..9].sample.to_s).gsub(/X/, [*"A".."Z"].sample)
  random_current_rent = Money.new(rand(1000.00..50000.00))
  random_initial_cost = Money.new(rand(2000000..50000000))
  random_telephone = rand.to_s[2..11] 
  random_email = "sample@sample.com"

  x = Property.new()
  x.description = random_description
  x.postcode = random_postcode
  x.telephone = random_telephone
  x.initial_cost = random_initial_cost
  x.current_rent = random_current_rent
  x.email = random_email
  x.save
  puts "Created #{x.id}"
end