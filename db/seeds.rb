# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Location.destroy_all
User.destroy_all

user1 = User.create(first_name: 'Benjamin',
                    last_name: 'Boulle',
                    email: 'benjaminboulle.sjb@gmail.com',
                    phone_number: '0032 471 23 44 11',
                    address: 'Avenue du Monoplan 12, 1150 Woluwe-Saint-Pierre',
                    password:'azertyuiop'
                    )



CATEGORY = "'kids party', 'student party', 'wedding', 'bal', 'birthday'"

Location.create(user_id: user1.id, title: 'Le Hangar', address: 'Avenue Champelle 1, Rhode-Saint_genèse', category: CATEGORY)
Location.create(user_id: user1.id, title: 'Factory', address: 'Cantersteen 12, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user1.id, title: "L'Usine", address: 'Pl. de la Vieille Halle aux Blés 28, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user1.id, title: 'Wood Cutter', address: 'Rue des Alexiens 37, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user1.id, title: 'Beach', address: 'Rue de la Violette 22, 1000 Bruxelles', category: CATEGORY)
Location.create(user_id: user1.id, title: 'The Penthouse', address: 'Rijswijkseplein 786, 2516 LX Den Haag, Netherlands', category: CATEGORY)
Location.create(user_id: user1.id, title: 'The Palace', address: 'Avenue du Monoplan 12, 1150 Bruxelles', category: CATEGORY)
