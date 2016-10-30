# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!
Serial.create!(name: 'Game of Thrones', description: "Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin's series of fantasy novels, the first of which is A Game of Thrones.")
Serial.create!(name: 'The Bing Bang Theory', description: "The show is primarily centered on five characters living in Pasadena, California: Leonard Hofstadter and Sheldon Cooper, both physicists at Caltech, who share an apartment; Penny, a waitress and aspiring actress who later becomes a pharmaceutical representative and who lives across the hall; and Leonard and Sheldon's similarly geeky and socially awkward friends and co-workers, aerospace engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys are contrasted for comic effect with Penny's social skills and common sense.")
Serial.create!(name: 'Peaky Blinders', description: "Peaky Blinders is a television crime drama based upon the exploits of the Peaky Blinders gang, operating in Birmingham, England during the aftermath of the First World War.")
Serial.create!(name: 'Walking Dead', description: 'The Walking Dead is an American horror drama television series developed by Frank Darabont, based on the comic book series of the same name by Robert Kirkman, Tony Moore, and Charlie Adlard. Andrew Lincoln plays the show lead character, sheriff deputy Rick Grimes, who awakens from a coma discovering a world overrun by zombies, commonly referred to as "walkers".')
Serial.create!(name: 'Preacher', description: 'Preacher is an American television series developed by Evan Goldberg, Seth Rogen and Sam Catlin for AMC starring Dominic Cooper. It is an adaptation of the comic book series created by Garth Ennis and Steve Dillon, and published by DC Comics Vertigo imprint.')
Serial.create!(name: 'Star Wars', description: 'Star Wars is an American epic space opera franchise, centered on a film series created by George Lucas. It depicts the adventures of various characters "a long time ago in a galaxy far, far away".')

Spoiler.create!(text: 'John Snow is alive', serial_id: 1)
Spoiler.create!(text: 'Rob Stark was dead', serial_id: 1)
Spoiler.create!(text: 'Lorem ipsum', serial_id: 1)
Spoiler.create!(text: "Darth Vader was Luke's father", serial_id: 6)
Spoiler.create!(text: 'Dolor sit', serial_id: 2)
Spoiler.create!(text: 'Emit', serial_id: 3)
Spoiler.create!(text: 'Consectetuer adipiscing', serial_id: 4)
Spoiler.create!(text: 'Elit', serial_id: 5)

Task.create!(name: 'First task', description: 'Lorem ipsum', date: Time.now + 60000, complete: false, user_id: 1, spoiler: 'John Snow is alive')
