# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

InputType.create(name: 'Loaded')
InputType.create(name: 'Manual')

BetResult.create(name: 'Win')
BetResult.create(name: 'Loss')
BetResult.create(name: 'Push')