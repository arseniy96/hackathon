# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!
Task.create!(name: 'First task', description: 'Lorem ipsum', date: Time.now + 60000, complete: false, user_id: 1)
Serial.create!(name: 'Game of Thrones')
Serial.create!(name: 'The Bing Bang Theory')
Serial.create!(name: 'Peaky Bblinders')
Serial.create!(name: 'Walking Dead')
Serial.create!(name: 'Preacher')
Serial.create!(name: 'Star Wars')

