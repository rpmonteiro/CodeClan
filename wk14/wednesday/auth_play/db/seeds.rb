# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Account.delete_all

user1 = User.create!(
  email: 'ric@ric.com',
  password: '123123',
  password_confirmation: '123123'
)

user2 = User.create!(
  email: 'ricric@ric.com',
  password: '123123',
  password_confirmation: '123123'
)

user1.accounts.create!(
  user: user1,
  name: 'My Swiss Bank Accounts',
  amount: 1000, bank: 'UBS'
)

user1.accounts.create!(
  user: user1,
  name: 'My Bahamas Bank Accounts',
  amount: 1000, bank: 'EvilCorp'
)
