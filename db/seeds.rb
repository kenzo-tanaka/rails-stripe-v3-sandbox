# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'iPhone', description: 'apple社が製造しているスマホ', amount: 100)
Product.create(name: 'iPad', description: 'apple社が製造しているタブレット', amount: 1000)
Product.create(name: 'MacBook', description: 'apple社が製造しているパソコン', amount: 10_000)
User.create(email: 'admin@example.com', password: 'password')
User.create(email: 'user@example.com', password: 'password')
Movie.create(title: 'バトル・オブ・シリコンバレー', video_url: 'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
Movie.create(title: 'シリコンバレーを抜け駆けろ！ ', video_url: 'https://images.unsplash.com/photo-1601518701786-0efa8a946253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1948&q=80')
Movie.create(title: 'マネーボール', video_url: 'https://images.unsplash.com/photo-1601363563276-8a137aa7c32c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2378&q=80')
