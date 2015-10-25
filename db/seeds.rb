# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(login: 'Monia', email: 'monia@monia.com', password: 'monia', confirm_password: 'monia')
u2 = User.create(login: 'Ala', email: 'ala@gmail.com', password: 'ala', confirm_password: 'ala')