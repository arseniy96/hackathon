# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!
Task.create!(name: 'First task', description: 'Lorem ipsum', date: Time.now + 60000, complete: false, user_id: 1)
Serial.create!(name: 'Game of Thrones', description: 'Blabla')
Serial.create!(name: 'The Bing Bang Theory', description: 'Lorem ipsum')
Serial.create!(name: 'Peaky Bblinders', description: '132')
Serial.create!(name: 'Walking Dead', description: '132')
Serial.create!(name: 'Preacher', description: '132')
Serial.create!(name: 'Star Wars', description: '132')

