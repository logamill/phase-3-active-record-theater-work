Role.destroy_all
Audition.destroy_all

puts "Seeding data..."

neo = Role.create( character_name: "Neo from The Matrix" )
dan = Role.create( character_name: "Dan" )

Audition.create(actor: "Daniel Wingus", location: "Los Angeles", phone: 3046911694, hired: false, role_id: neo.id)
Audition.create(actor: "Anders Dringus", location: "Los Angeles", phone: 3046912694, hired: true, role_id: neo.id)
Audition.create(actor: "Drebbers Webb", location: "San Francisco", phone: 2046912694, hired: true, role_id: dan.id)


puts "Finished seeding!"