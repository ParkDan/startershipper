# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Network.destroy_all
n = Network.new
n.name = 'Starter League'
n.save

puts 'There is now a Network called Starter League'
Group.destroy_all
g = Group.new
g.name = 'Starter Shipper'
g.save
puts 'There is now a Group called Starter Shipper'
