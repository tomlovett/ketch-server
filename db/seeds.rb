# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


spam = Team.create(name: 'SPAM', primary: 'blue', secondary: 'white')

tom = Player.create(first_name: 'Tom', last_name: 'Lovett', gender: 'm')
tom_user = User.create(email: 'tom', player: tom)
spam.players << tom
spam.users << tom_user
spam.save

player_base = [
  {first_name: 'Ben', last_name: 'McF', gender: 'm', nickname: '' },
  {first_name: 'Nick', last_name: 'C', gender: 'm', nickname: 'NC' },
  {first_name: 'Ronnie', last_name: 'W', gender: 'm', nickname: 'Fresh Ronnie' },
  {first_name: 'Joe', last_name: 'B', gender: 'm', nickname: 'Bowie' },
  {first_name: 'Temple', last_name: 'P', gender: 'm', nickname: '' },
  {first_name: 'Sam', last_name: 'C', gender: 'm', nickname: 'Chalfin' },
  {first_name: 'Min', last_name: 'K', gender: 'm', nickname: '' },
  {first_name: 'Arda', last_name: 'K', gender: 'f', nickname: '' },
  {first_name: 'Lauren', last_name: 'C', gender: 'f', nickname: 'LoCo' },
  {first_name: 'Emma', last_name: 'W', gender: 'f', nickname: 'High School Emma' },
  {first_name: 'Emma', last_name: 'H', gender: 'f', nickname: '' },
]

player_base.each do |p|
  spam.players << Player.create(first_name: p[:first_name], last_name: p[:last_name], gender: p[:gender], nickname: p[:nickname])
end
