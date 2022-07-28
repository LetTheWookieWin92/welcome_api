# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(
    [{ name: 'First Event',  description: 'Event description', date: '2016-06-06 01:00:00', presenter: 'Geoff Reid', degree: '', is_english: false, is_domestic: false, is_common: false}])
