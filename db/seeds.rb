# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

Booking.destroy_all
Location.destroy_all
User.destroy_all
CATEGORY = "kids party, student party, wedding, ball, birthday"

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

location1 = Location.new(user_id: user1.id, title: 'Le Hangar', address: 'Avenue Champel 28, Rhode-Saint-Genèse', category: CATEGORY)
location2 = Location.new(user_id: user2.id, title: 'Factory', address: 'Cantersteen 12, 1000 Bruxelles', category: CATEGORY)
location3 = Location.new(user_id: user2.id, title: "L'Usine", address: 'Pl. de la Vieille Halle aux Blés 28, 1000 Bruxelles', category: CATEGORY)
location4 = Location.new(user_id: user1.id, title: 'Wood Cutter', address: 'Rue des Alexiens 37, 1000 Bruxelles', category: CATEGORY)
location5 = Location.new(user_id: user3.id, title: 'Beach', address: 'Rue de la Violette 22, 1000 Bruxelles', category: CATEGORY)
location6 = Location.new(user_id: user3.id, title: 'The Penthouse', address: 'Rijswijkseplein 786, 2516 LX Den Haag, Netherlands', category: CATEGORY)
location7 = Location.new(user_id: user1.id, title: 'The Palace', address: 'Avenue du Monoplan 12, 1150 Bruxelles', category: CATEGORY)
location8 = Location.new(user_id: user4.id, title: 'The Cave', address: 'Av. De Fré 206, 1180 Uccle', category: CATEGORY)
location9 = Location.new(user_id: user4.id, title: 'The Stranger', address: 'Rue Dr Huet 79, 1070 Anderlecht', category: CATEGORY)

file1 = URI.open("https://static.wixstatic.com/media/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg/v1/fill/w_2500,h_1502,al_c/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg")
file2 = URI.open("https://miro.medium.com/max/1400/1*gx_0gcBtD_ogtyrph_kC1w.jpeg")
file3 = URI.open("https://www.usinesportsclub.com/wp-content/uploads/2020/10/Usine-1A-scaled.jpg")
file4 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/31/06/26/axe-in-target.jpg?w=1200&h=1200&s=1")
file5 = URI.open("https://res.cloudinary.com/jerrick/image/upload/v1602228402/5f8010b2942bd5001cff8b6c.jpg")
file6 = URI.open("https://www.condoblackbook.com/media/3873/the-ritz-carlton-residences-miami-beach.png?anchor=center&mode=crop&width=800&height=535&rnd=132652957070000000")
file7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg/1200px-Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg")
file8 = URI.open("https://i.natgeofe.com/n/22e86334-d123-4a21-8180-f694bf2632d7/3563728_16x9.jpg")
file9 = URI.open("https://images.squarespace-cdn.com/content/v1/5876d81c5016e15c31366fcd/1593556305562-Y8D3K1QJLCMGQ9IVPU6O/MAH_2574-edit_REV.jpg?format=2500w")

description1 = "Goupil le Fol is a true classic, a lush, dimly-lit boudoir close to the Grand'Place and yet miles away from present times. As soon as you pass the door you'll find yourself wrapped in a cocoon of French chanson and yesteryear spleen. Candle wax is dripping on the tables and comfortable armchairs in which one surrenders without regret will seduce you to try one of the alcohol free coctails or fruit wines."

location1.photo.attach(io: file1, filename: "nes1.jpg", content_type: "image/jpg")
location2.photo.attach(io: file2, filename: "nes2.jpg", content_type: "image/jpg")
location3.photo.attach(io: file3, filename: "nes3.jpg", content_type: "image/jpg")
location4.photo.attach(io: file4, filename: "nes4.jpg", content_type: "image/jpg")
location5.photo.attach(io: file5, filename: "nes5.jpg", content_type: "image/jpg")
location6.photo.attach(io: file6, filename: "nes6.jpg", content_type: "image/jpg")
location7.photo.attach(io: file7, filename: "nes7.jpg", content_type: "image/jpg")
location8.photo.attach(io: file8, filename: "nes8.jpg", content_type: "image/jpg")
location9.photo.attach(io: file9, filename: "nes9.jpg", content_type: "image/jpg")

location1.description = description1
location2.description = description1
location3.description = description1
location4.description = description1
location5.description = description1
location6.description = description1
location7.description = description1
location8.description = description1
location9.description = description1

location1.save
location2.save
location3.save
location4.save
location5.save
location6.save
location7.save
location8.save
location9.save
