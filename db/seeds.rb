# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

InputType.find_or_create_by(name: 'Loaded')
InputType.find_or_create_by(name: 'Manual')

BetResult.find_or_create_by(name: 'Win')
BetResult.find_or_create_by(name: 'Loss')
BetResult.find_or_create_by(name: 'Push')