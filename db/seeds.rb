# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

Review.destroy_all
Booking.destroy_all
Location.destroy_all
User.destroy_all
CATEGORY = "kids party, student party, wedding, ball, birthday"

benjamin = URI.open("https://avatars.githubusercontent.com/u/115448260?v=4")
arthur = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
gideon = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665405360/o1pmr1f0uw7zalu3gb3h.jpg")
arda = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665238104/pf4ty3lwz2de1fs45ltw.jpg")
bob = URI.open("https://i.pinimg.com/originals/e8/3e/fc/e83efc660ae1fd1d420dacb58d00d953.jpg")

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

user1.photo.attach(io: benjamin, filename: "benjamin.jpg", content_type: "image/jpeg")
user2.photo.attach(io: arthur, filename: "arthur.jpg", content_type: "image/jpeg")
user3.photo.attach(io: gideon, filename: "gideon.jpg", content_type: "image/jpeg")
user4.photo.attach(io: arda, filename: "arda.jpg", content_type: "image/jpeg")

userbob = User.create(first_name: 'Bob',
                      last_name: 'Boulle',
                      email: 'bob@gmail.com',
                      phone_number: '00 32 471 23 44 11',
                      address: 'Avenue du Monoplan 12, 1150 Woluwe-Saint-Pierre',
                      password: 'azerty')

userbob.photo.attach(io: bob, filename: "bob.jpg", content_type: "image/jpeg")

location1 = Location.new(user_id: user1.id, title: 'Le Hangar', address: 'Avenue Champel 28, Rhode-Saint-Genèse', category: CATEGORY)
location2 = Location.new(user_id: user2.id, title: 'Factory', address: 'Cantersteen 12, 1000 Bruxelles', category: CATEGORY)
location3 = Location.new(user_id: user2.id, title: "L'Usine", address: 'Pl. de la Vieille Halle aux Blés 28, 1000 Bruxelles', category: CATEGORY)
location4 = Location.new(user_id: user1.id, title: 'Wood Cutter', address: 'Rue des Alexiens 37, 1000 Bruxelles', category: CATEGORY)
location5 = Location.new(user_id: user3.id, title: 'Beach', address: 'Rue de la Violette 22, 1000 Bruxelles', category: CATEGORY)
location6 = Location.new(user_id: user3.id, title: 'The Penthouse', address: 'Rijswijkseplein 786, 2516 LX Den Haag, Netherlands', category: CATEGORY)
location7 = Location.new(user_id: user1.id, title: 'The Palace', address: 'Avenue du Monoplan 12, 1150 Bruxelles', category: CATEGORY)
location8 = Location.new(user_id: user4.id, title: 'The Cave', address: 'Av. De Fré 206, 1180 Uccle', category: CATEGORY)
location9 = Location.new(user_id: user4.id, title: 'The Stranger', address: 'Rue Dr Huet 79, 1070 Anderlecht', category: CATEGORY)

description1 = "Goupil le Fol is a true classic, a lush, dimly-lit boudoir close to the Grand'Place and yet miles away from present times. As soon as you pass the door you'll find yourself wrapped in a cocoon of French chanson and yesteryear spleen. Candle wax is dripping on the tables and comfortable armchairs in which one surrenders without regret will seduce you to try one of the alcohol free coctails or fruit wines."

location1.description = description1
location2.description = description1
location3.description = description1
location4.description = description1
location5.description = description1
location6.description = description1
location7.description = description1
location8.description = description1
location9.description = description1


file1 = URI.open("https://static.wixstatic.com/media/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg/v1/fill/w_2500,h_1502,al_c/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg")
file11 = URI.open("https://lehangar.be/wp-content/uploads/2021/02/11.jpg")
# file111 = URI.open("https://static.wixstatic.com/media/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg/v1/fill/w_2500,h_1502,al_c/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg")
# file1111 = URI.open("https://static.wixstatic.com/media/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg/v1/fill/w_2500,h_1502,al_c/7680dd_61081cf4a35a45deaa47559601a03e6f~mv2.jpg")

file2 = URI.open("https://s.wsj.net/public/resources/images/B3-CU724_NYANDY_M_20190103170641.jpg")
file22 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/d5/84/11/the-factory-bar.jpg?w=1200&h=-1&s=1")
# file222 = URI.open("https://s.wsj.net/public/resources/images/B3-CU724_NYANDY_M_20190103170641.jpg")
# file2222 = URI.open("https://s.wsj.net/public/resources/images/B3-CU724_NYANDY_M_20190103170641.jpg")

file3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/15/35/14/43/l-usine-le-thanh-ton.jpg")
file33 = URI.open("https://www.usinesportsclub.com/wp-content/uploads/2020/10/Usine-1A-scaled.jpg")
# file333 = URI.open("https://www.usinesportsclub.com/wp-content/uploads/2020/10/Usine-1A-scaled.jpg")
# file3333 = URI.open("https://www.usinesportsclub.com/wp-content/uploads/2020/10/Usine-1A-scaled.jpg")

file4 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/31/06/26/axe-in-target.jpg?w=1200&h=1200&s=1")
file44 = URI.open("https://www.thebulletin.be/sites/default/files/woodcutter.jpg")
# file444 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/31/06/26/axe-in-target.jpg?w=1200&h=1200&s=1")
# file4444 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/31/06/26/axe-in-target.jpg?w=1200&h=1200&s=1")

file5 = URI.open("https://media.cntraveler.com/photos/5e84a75e4ab09800086faefe/master/pass/KastaweyBeachBarCourtseyFSNevis.jpg")
file55 = URI.open("https://res.cloudinary.com/jerrick/image/upload/v1602228402/5f8010b2942bd5001cff8b6c.jpg")
# file555 = URI.open("https://res.cloudinary.com/jerrick/image/upload/v1602228402/5f8010b2942bd5001cff8b6c.jpg")
# file5555 = URI.open("https://res.cloudinary.com/jerrick/image/upload/v1602228402/5f8010b2942bd5001cff8b6c.jpg")

file6 = URI.open("https://www.condoblackbook.com/media/3873/the-ritz-carlton-residences-miami-beach.png?anchor=center&mode=crop&width=800&height=535&rnd=132652957070000000")
file66 = URI.open("https://paranych.blogs.redmantech.com/files/2020/07/benefits-penthouse-living-main-image.png")
# file666 = URI.open("https://www.condoblackbook.com/media/3873/the-ritz-carlton-residences-miami-beach.png?anchor=center&mode=crop&width=800&height=535&rnd=132652957070000000")
# file6666 = URI.open("https://www.condoblackbook.com/media/3873/the-ritz-carlton-residences-miami-beach.png?anchor=center&mode=crop&width=800&height=535&rnd=132652957070000000")

file7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg/1200px-Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg")
file77 = URI.open("https://i.pinimg.com/originals/6e/36/5b/6e365b028e29073da13bc7f461791f78.jpg")
# file777 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg/1200px-Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg")
# file7777 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg/1200px-Buckingham_Palace_aerial_view_2016_%28cropped%29.jpg")

file8 = URI.open("https://i.natgeofe.com/n/22e86334-d123-4a21-8180-f694bf2632d7/3563728_16x9.jpg")
file88 = URI.open("https://media.margaretriver.com/wp-content/uploads/2021/11/Lake-Cave-4.2.16-Photo-Elements-Margaret-River0052screenres.jpg?tr=w-1500,h-1000")
# file888 = URI.open("https://i.natgeofe.com/n/22e86334-d123-4a21-8180-f694bf2632d7/3563728_16x9.jpg")
# file8888 = URI.open("https://i.natgeofe.com/n/22e86334-d123-4a21-8180-f694bf2632d7/3563728_16x9.jpg")

file9 = URI.open("https://lh5.googleusercontent.com/p/AF1QipMN_OzmwcxKWFTYK6xpDfi8-QHWg2H9UeIEzbl1=w500-h500-k-no")
file99 = URI.open("https://images.squarespace-cdn.com/content/v1/5876d81c5016e15c31366fcd/1593556305562-Y8D3K1QJLCMGQ9IVPU6O/MAH_2574-edit_REV.jpg?format=2500w")
# file999 = URI.open("https://images.squarespace-cdn.com/content/v1/5876d81c5016e15c31366fcd/1593556305562-Y8D3K1QJLCMGQ9IVPU6O/MAH_2574-edit_REV.jpg?format=2500w")
# file9999 = URI.open("https://images.squarespace-cdn.com/content/v1/5876d81c5016e15c31366fcd/1593556305562-Y8D3K1QJLCMGQ9IVPU6O/MAH_2574-edit_REV.jpg?format=2500w")

location1.photos.attach(io: file1, filename: "Le Hangar.jpg", content_type: "image/jpeg")
location1.photos.attach(io: file11, filename: "Le Hangar1.jpg", content_type: "image/jpeg")
# location1.photos.attach(io: file111, filename: "Le Hangars2.jpg", content_type: "image/jpeg")
# location1.photos.attach(io: file1111, filename: "Le Hangars2.jpg", content_type: "image/jpeg")

location2.photos.attach(io: file2, filename: "Factory.jpg", content_type: "image/jpeg")
location2.photos.attach(io: file22, filename: "Factory1.jpg", content_type: "image/jpeg")
# location2.photos.attach(io: file222, filename: "Factory2.jpg", content_type: "image/jpeg")
# location2.photos.attach(io: file2222, filename: "Factory3.jpg", content_type: "image/jpeg")

location3.photos.attach(io: file3, filename: "L'Usine.jpg", content_type: "image/jpeg")
location3.photos.attach(io: file33, filename: "L'Usine1.jpg", content_type: "image/jpeg")
# location3.photos.attach(io: file333, filename: "L'Usine2.jpg", content_type: "image/jpeg")
# location3.photos.attach(io: file3333, filename: "L'Usine3.jpg", content_type: "image/jpeg")

location4.photos.attach(io: file4, filename: "Wood Cutter.jpg", content_type: "image/jpeg")
location4.photos.attach(io: file44, filename: "Wood Cutter1.jpg", content_type: "image/jpeg")
# location4.photos.attach(io: file444, filename: "Wood Cutter2.jpg", content_type: "image/jpeg")
# location4.photos.attach(io: file4444, filename: "Wood Cutter3.jpg", content_type: "image/jpeg")

location5.photos.attach(io: file5, filename: "Beach.jpg", content_type: "image/jpeg")
location5.photos.attach(io: file55, filename: "Beach1.jpg", content_type: "image/jpeg")
# location5.photos.attach(io: file555, filename: "Beach2.jpg", content_type: "image/jpeg")
# location5.photos.attach(io: file5555, filename: "Beach3.jpg", content_type: "image/jpeg")

location6.photos.attach(io: file6, filename: "The Penthouse.jpg", content_type: "image/jpeg")
location6.photos.attach(io: file66, filename: "The Penthouse1.png", content_type: "image/png")
# location6.photos.attach(io: file666, filename: "The Penthouse2.jpg", content_type: "image/jpeg")
# location6.photos.attach(io: file6666, filename: "The Penthouse3.jpg", content_type: "image/jpeg")

location7.photos.attach(io: file7, filename: "The Palace.jpg", content_type: "image/jpeg")
location7.photos.attach(io: file77, filename: "The Palace1.jpg", content_type: "image/jpeg")
# location7.photos.attach(io: file777, filename: "The Palace2.jpg", content_type: "image/jpeg")
# location7.photos.attach(io: file7777, filename: "The Palace3.jpg", content_type: "image/jpeg")

location8.photos.attach(io: file8, filename: "The Cave.jpg", content_type: "image/jpeg")
location8.photos.attach(io: file88, filename: "The Cave1.jpg", content_type: "image/jpeg")
# location8.photos.attach(io: file888, filename: "The Cave2.jpg", content_type: "image/jpeg")
# location8.photos.attach(io: file8888, filename: "The Cave3.jpg", content_type: "image/jpeg")

location9.photos.attach(io: file9, filename: "The Stranger.jpg", content_type: "image/jpeg")
location9.photos.attach(io: file99, filename: "The Stranger1.jpg", content_type: "image/jpeg")
# location9.photos.attach(io: file999, filename: "The Stranger2.jpg", content_type: "image/jpeg")
# location9.photos.attach(io: file9999, filename: "The Stranger3.jpg", content_type: "image/jpeg")

location1.save
location2.save
location3.save
location4.save
location5.save
location6.save
location7.save
location8.save
location9.save


###
