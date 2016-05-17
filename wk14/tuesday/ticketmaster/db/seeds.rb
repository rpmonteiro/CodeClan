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
# exclamation mark means that if there's an error, it'll fail
# instead of just returning null
Artist.create!(name: 'Oasis')
Artist.create!(name: 'Justin Bieber')
