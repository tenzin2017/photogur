# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Picture.create(
  title:  'The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg'
)

Picture.create(
  title:  'Sea Power',
  artist: 'Stephen Scullion',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg'
)

Picture.create(
  title:  'Into the Poppies',
  artist: 'John Wilhelm',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg'
  user_id: 1)

user1= User.create(email: "lsfsflsfjls",
password: "111",
password_confirmation: "111")

user2 = User.create(email: "fsfsfsf",
password: "222",
password_confirmation: "222")

user3 = User.create(email: "sfsfsf",
password: "333",
password_confirmation: "333")

user4 = User.create(email: "sfsfsfs",
password: "444",
password_confirmation: "444")

user5 = User.create(email: "sfsfsfsf",
password: "555",
password_confirmation: "555")

user6 = User.create(email: "ssfsfsf",
password: "666",
password_confirmation: "666")
