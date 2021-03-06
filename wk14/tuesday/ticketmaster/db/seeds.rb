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
Gig.delete_all
Venue.delete_all
Track.delete_all
# exclamation mark means that if there's an error, it'll fail
# instead of just returning null
artist1 = Artist.create!(name: 'Oasis')
artist2 = Artist.create!(name: 'Justin Bieber')

# Album.create!(name: 'Be Here Now', artist_id: artist1.id) alternative syntax
# an album can be created through an artist
album1 = artist1.albums.create!(name: 'Yeah. Oasis, bitch.')
album2 = artist2.albums.create!(name: 'Baby baby babyy')

venue1 = Venue.create!(name: 'Hard rock cafe', location: 'Edinburgh')
venue2 = Venue.create!(name: 'O2 Arena', location: 'London')

track1 = Track.create!(album_id: album1.id, title: 'Live forever', duration: 180)
# this syntax is only possible after adding the has_many relation to the
# album model
track2 = album2.tracks.create!(album_id: album2.id, title: 'One more time', duration: 167)

Gig.create(
  artist_id: artist1.id,
  venue_id: venue1.id,
  price: 30,
  # if no hour is set, it'll default to midnight
  # to add hour would be (DateTime.new(2016, 11, 1, 15, 0, 0)) - it works
  # YYYY/MM/DD/HH/MM/SS
  date: DateTime.new(2016, 11, 1, 15, 0, 0)
)
