# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# delete all ensures we don't duplicate record in the database if we run the
# seeds file multiple times
Artist.delete_all
Album.delete_all
# exclamation mark means that if there's an error, it'll fail
# instead of just returning null
artist1 = Artist.create!(name: 'Oasis')
artist2 = Artist.create!(name: 'Justin Bieber')

# Album.create!(name: 'Be Here Now', artist_id: artist1.id) alternative syntax
# an album can be created through an artist
artist1.albums.create(name: 'Yeah. Oasis, bitch.')
artist2.albums.create(name: 'Baby baby babyy')
