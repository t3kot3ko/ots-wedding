# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = "12345678"

user = User.create(email: "user@example.com", password: password)
profile = UserProfile.create(showname: "showname", user: user)

party = Party.create(title: "party", held_at: Date.today, user: user)
Participation.create(user: user, party: party)

album = Album.create(title: "album", party: party)

10.times do |i|
	album.photos << Photo.create(url: "http://example.com/photo", )
end


