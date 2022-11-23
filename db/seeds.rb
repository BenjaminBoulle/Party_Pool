# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Booking.destroy_all
Location.destroy_all
User.destroy_all
CATEGORY = "'kids party', 'student party', 'wedding', 'ball', 'birthday'"

user1 = User.create(first_name: 'Benjamin',
                    last_name: 'Boulle',
                    email: 'benjaminboulle.sjb@gmail.com',
                    phone_number: '00 32 471 23 44 11',
                    address: 'Avenue du Monoplan 12, 1150 Woluwe-Saint-Pierre',
                    password: 'azerty')

user2 = User.create(first_name: 'Arthur',
                    last_name: 'Peers',
                    email: 'arthurpeers6@gmail.com',
                    phone_number: '00 32 487 12 99 09',
                    address: 'Avenue champel 28,  Rhode-Saint-Genèse',
                    password: 'azerty')

user3 = User.create(first_name: 'Gideon',
                    last_name: 'Maydell',
                    email: 'gideon@maydell.at',
                    phone_number: '00 43 650 24 88887',
                    address: 'Rue de Savoie, 1060 Saint-Gilles',
                    password: 'qwertz')

user4 = User.create(first_name: 'Arda',
                    last_name: 'Cansizoğlu',
                    email: 'ardacansizoğlu@gmail.com',
                    phone_number: '00 43 650 24 53 65',
                    address: 'Rue de mons, Mons',
                    password: 'azerty')

Location.create(user_id: user1.id, title: 'Le Hangar', address: 'Avenue Champel 28, Rhode-Saint-Genèse', category: CATEGORY)
Location.create(user_id: user2.id, title: 'Factory', address: 'Cantersteen 12, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user2.id, title: "L'Usine", address: 'Pl. de la Vieille Halle aux Blés 28, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user1.id, title: 'Wood Cutter', address: 'Rue des Alexiens 37, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user3.id, title: 'Beach', address: 'Rue de la Violette 22, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user3.id, title: 'The Penthouse', address: 'Rijswijkseplein 786, 2516 LX Den Haag, Netherlands', category: CATEGORY)
Location.create(user_id: user1.id, title: 'The Palace', address: 'Avenue du Monoplan 12, 1150 Bruxelles', category: CATEGORY)
Location.create(user_id: user4.id, title: 'The Cave', address: 'Av. De Fré 206, 1180 Uccle', category: CATEGORY)
Location.create(user_id: user4.id, title: 'The Stranger', address: 'Rue Dr Huet 79, 1070 Anderlecht', category: CATEGORY)
