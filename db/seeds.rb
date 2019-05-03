# This file should contain all the record creation needed to seed the database.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
Genre.delete_all
Film.delete_all

action = Genre.create!(name: 'Action')
sci_fi = Genre.create!(name: 'Sci-Fi')

jurassic_park = Film.create!(title: 'Jurassic Park',
                             rating: 8,
                             seen: true,
                             date_seen: 1995,
                             release_date: Date.parse('16th July 1993'))

avengers = Film.create!(title: 'Avengers: Endgame',
                        rating: 7,
                        seen: true,
                        date_seen: Date.parse('28th April 2019'),
                        release_date: Date.parse('26th April 2019'))

jurassic_park.genres = [action]
avengers.genres = [action, sci_fi]
