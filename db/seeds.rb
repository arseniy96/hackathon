# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!
Task.create!(name: 'First task', description: 'Lorem ipsum', date: Time.now + 60000, complete: false, user_id: 1)
Availableserial.create!(name: 'Game of Thrones')
Availableserial.create!(name: 'The Bing Bang Theory')
Availableserial.create!(name: 'Peaky Bblinders')
Availableserial.create!(name: 'Walking Dead')
Availableserial.create!(name: 'Preacher')
Availableserial.create!(name: 'Star Wars')

