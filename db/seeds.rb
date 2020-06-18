# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

tasks = Task.create([
                      { name: 'plan an app',
                        description: 'steps',
                        due_date: 2020 - 0o7 - 0o2 }, # , project: nil, category: nil },
                      { name: 'make dinner',
                        description: 'prep food + cook food',
                        due_date: 2020 - 0o7 - 0o2 }, # , project: nil, category: nil },

                      { name: 'create commits plan',
                        description: 'commit1. commit2. commit3' }

                    ])

# , project: nil, category: nil }
# { name: 'Biggie', description: 'biggie@placeholder.com' },

#                    { name: 'Janis Joplin', description: 'janis@placeholder.com' },

#                    { name: 'Nas', description: 'nas@placeholder.com' },

#                    { name: 'Coldplay', description: 'coldplay@placeholder.com' },

#                    { name: 'Prince', description: 'prince@placeholder.com' },

#                    { name: '112', description: '112@placeholder.com' },

#                    { name: 'Maroon 5', description: 'maroon5@placeholder.com' },

#                    { name: 'Bob Marley', description: 'bob@placeholder.com' },

#                    { name: 'J.Cole', description: 'jcole@placeholder.com' },

#                    { name: 'Foster The People', description: 'ftp@placeholder.com' },

#                    { name: 'Eve', description: 'eve@placeholder.com' },

#                    { name: 'Jimi', description: 'jimi@placeholder.com' },

#                    { name: 'Shaq', description: 'shaq@placeholder.com' },

#                    { name: 'Frank Ocean', description: 'frank@placeholder.com' },

#                    { name: 'Kendrick', description: 'kendrick@placeholder.com' },

#                    { name: 'Gwen', description: 'gwen@placeholder.com' }])

# !studios
# studios = Studio.create([{ name: 'Fancy Closet', location: 'Harlem, New York' },

#                          { name: 'Quad Studios', location: 'Brooklyn, New York' },

#                          { name: 'The Max', location: 'Harlem, New York' },

#                          { name: 'THe Boom Boom Room', location: 'Harlem, New York' },

#                          { name: 'The Block', location: 'Queens, New York' },

#                          { name: 'Hit Factory', location: 'Staten Island, New York' },

#                          { name: 'Glass Cage of Emotion', location: 'Bronx, New York' },

#                          { name: 'Beat Farm', location: 'Harlem, New York' },

#                          { name: "Grandma's Basement", location: 'Harlem, New York' }])

# !engineers
# engineers = Engineer.create([{ email: 'lu@lu.com', name: 'Lu' },

#                              { email: 'nikki@nikki.com', name: 'Nikki Daley' },

#                              { email: 'young@guru.com', name: 'Young Guru' },

#                              { email: 'stush@stush.com', name: 'Stush' },

#                              { email: 'bodega@bodega.com', name: 'Bodega Dude' },

#                              { email: 'dre@dre.com', name: 'Dr. Dre' },

#                              { email: 'hot@hot.com', name: 'Hot Pie' },

#                              { email: 'timbo@timbo.com', name: 'Timbaland' },

#                              { email: 'Winslow@Winslow.com', name: 'Officer Winslow' },

#                              { email: 'rick@rick.com', name: 'Rick Ruben' },

#                              { email: 'gilly@gilly.com', name: 'Gilly' },

#                              { email: 'teddy@teddy.com', name: 'Teddy Riley' }])

# # ([{ name: 'Lu'}, {name: 'Stush'}, {name: 'Podrick'}, {name: 'Arya'}, {name: 'Teddy'}])

# !recording sessions
# # RecordingSession.create(appointment_date: '6.1.2019', engineer: Engineer.first, studio: Studio.first, artist: Artist.first )

# RecordingSession.create(appointment_date: '27.6.2020 07:00', engineer_id: engineers[0].id, studio_id: studios[0].id, artist_id: artists[0].id)
# RecordingSession.create([
#                           { appointment_date: '14/04/21 07:00', status: 'false', duration: '30',
#                             studio_id: studios[5].id, engineer_id: engineers[5].id, artist_id: artists[5].id }
#                         ])

# RecordingSession.create(appointment_date: '27.7.2020 10:00', engineer_id: engineers[1].id, studio_id: studios[1].id, artist_id: artists[1].id)

# RecordingSession.create(appointment_date: '28.6.2020 15:00', engineer_id: engineers[5].id, studio_id: studios[7].id, artist_id: artists[6].id)

# RecordingSession.create(appointment_date: '21.9.2020 17:00', engineer_id: engineers[2].id, studio_id: studios[2].id, artist_id: artists[2].id)

# RecordingSession.create(appointment_date: '23.8.2020 19:00', engineer_id: engineers[6].id, studio_id: studios[7].id, artist_id: artists[6].id)

# RecordingSession.create(appointment_date: '24.9.2020 14:00', engineer_id: engineers[3].id, studio_id: studios[3].id, artist_id: artists[3].id)

# RecordingSession.create(appointment_date: '17.8.2020 12:00', engineer_id: engineers[7].id, studio_id: studios[7].id, artist_id: artists[7].id)

# RecordingSession.create(appointment_date: '16.8.2020 09:00', engineer_id: engineers[4].id, studio_id: studios[4].id, artist_id: artists[4].id)

# RecordingSession.create(appointment_date: '12.9.2020 20:00', engineer_id: engineers[6].id, studio_id: studios[1].id, artist_id: artists[2].id)

# ! attempt to use a loop top populate the  seed file--- failed
# session_list = [
#   [appointment_date: '20.08.2020', engineer_id: engineers[0], studio_id: studios[0], artist_id: artists[0]],
#   [appointment_date: '19.7.2020', engineer_id: engineers[5], studio_id: studios[5], artist_id: artists[5]]
# ]

# session_list.each do |apppointment_date, _engineer_id, _studio_id, _artist_id|
#   #   RecordingSession.create(name: name, population: population)
#   RecordingSession.create(apppointment_date: apppointment_date, engineer_id: engineer.id, studio_id: studio.id, artist_id: artist.id)
# end
