# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harbours = Harbour.create(
    [{name: 'Aberdeen', country: 'United Kingdom', lat: 57.14255, long: -2.0791805},
    {name: 'Bergen', country: 'Norway', lat: 60.39085, long: 5.32245}]
)
