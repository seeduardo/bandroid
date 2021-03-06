# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "None", last_name: "None", email: "none@none.com", password: "none")
User.create(first_name: "Wanda", last_name: "Fathead", email: "wanda4eva@provider.com", password: "magicW@and@")
User.create(first_name: "Colin", last_name: "Cornetto", email: "colingering_on@something.com", password: "gahfeckth1s")
User.create(first_name: "Frieda", last_name: "Stroganoff", email: "friedasthewind@email.com", password: "P@ZZW0rd")
User.create(first_name: "Ashley", last_name: "Concrete", email: "conc_ash@butts.com", password: "ash_conc_roolZ")
User.create(first_name: "Derek", last_name: "Bastard", email: "d.bastard@email.com", password: "Porsche911!")

Band.create(name: "Best Band Ever", location: "London", bio: "The clue's in the name")
Band.create(name: "Another Band", location: "Bognor", bio: "We make music innit")
Band.create(name: "Oh Look More Musicians", location: "Hell", bio: "Turn it up, I'm deaf")
Band.create(name: "Total Cack", location: "London", bio: "Oh my god that is a horrible racket")
Band.create(name: "Meh to Names", location: "Vienna", bio: "We're sad we don't have many fans")

Instrument.create(name: "None Yet")
Instrument.create(name: "Guitar")
Instrument.create(name: "Drumkit")
Instrument.create(name: "Bass")
Instrument.create(name: "Vocals")
Instrument.create(name: "Banjo")
Instrument.create(name: "Kazoo")
Instrument.create(name: "Triangle")
Instrument.create(name: "Keyboard")
Instrument.create(name: "Gamelan")
Instrument.create(name: "Turntables")

Musician.create(stage_name: "None Yet", location: nil, bio: nil, user_id: 1, instrument_ids: [1])
Musician.create(stage_name: "Bono", location: "Madrid", bio: "What really is music anyway right?", user_id: 2, instrument_ids: [5])
Musician.create(stage_name: "Colcor", location: "Bognor", bio: "Sometimes I feel good, other times not", user_id: 3, instrument_ids: [3])
Musician.create(stage_name: "Frack", location: "Vienna", bio: "I was born to rock", user_id: 4, instrument_ids: [4,5])
Musician.create(stage_name: "Ashconc", location: "London", bio: "When I am bored, I play music", user_id: 5, instrument_ids: [6])
Musician.create(stage_name: "Bastard Biscuits", location: "London", bio: "I'm a bastard", user_id: 6, instrument_ids: [2])

BandMusician.create(role: "Vocals", filled: true, band_id: 1, musician_id: 2) 
BandMusician.create(role: "Drummer", filled: true, band_id: 2, musician_id: 3) 
BandMusician.create(role: "Bassist", filled: true, band_id: 3, musician_id: 4) 
BandMusician.create(role: "Banjoist", filled: true, band_id: 4, musician_id: 5) 
BandMusician.create(role: "Lead Guitar", filled: true, band_id: 5, musician_id: 6)
BandMusician.create(role: "Cheerleader", filled: false, band_id: 1, musician_id: 1)
BandMusician.create(role: "Theremin", filled: false, band_id: 1, musician_id: 1)
BandMusician.create(role: "Cheerleader", filled: false, band_id: 2, musician_id: 1)
BandMusician.create(role: "Backing Singer", filled: false, band_id: 3, musician_id: 1)
BandMusician.create(role: "Theremin", filled: false, band_id: 3, musician_id: 1)
BandMusician.create(role: "Drummer", filled: false, band_id: 3, musician_id: 1)
BandMusician.create(role: "Theremin", filled: false, band_id: 4, musician_id: 1)
BandMusician.create(role: "Theremin", filled: false, band_id: 4, musician_id: 1)
BandMusician.create(role: "Cheerleader", filled: false, band_id: 5, musician_id: 1)
BandMusician.create(role: "Backing Singer", filled: false, band_id: 5, musician_id: 1)
BandMusician.create(role: "Drummer", filled: false, band_id: 5, musician_id: 1)
