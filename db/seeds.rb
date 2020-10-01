# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'iPhone', description: 'apple社が製造しているスマホ', amount: 100)
Product.create(name: 'iPad', description: 'apple社が製造しているタブレット', amount: 1000)
Product.create(name: 'MacBook', description: 'apple社が製造しているパソコン', amount: 10000)
