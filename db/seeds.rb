# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!
Task.create!(name: 'First task', description: 'Lorem ipsum', date: Time.now + 60000, complete: false, user_id: 1)
Availableserials.create!(name: 'Game of Thrones')
Availableserials.create!(name: 'The Bing Bang Theory')
Availableserials.create!(name: 'Peaky Bblinders')
Availableserials.create!(name: 'Walking Dead')
Availableserials.create!(name: 'Preacher')
Availableserials.create!(name: 'Star Wars')

