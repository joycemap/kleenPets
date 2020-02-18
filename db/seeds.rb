# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
business1 = Listing.new(name: 'Pawtraits Pte Ltd', phone: '88622211', address: '96 Yio Chu Kang Road
', postal_code: 545574, email:'pawtraits@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'smth.url', home_service: true, aggressive_pets_accepted: true);
business1.save

business2 = Listing.new(name: 'Surrpaws Pet Grooming', phone: '88457183', address: 'Kensingston Square, 2 Jln Lokam, #01-21
', postal_code: 537846, email: 'surrpawspetgrooming@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'surrpaws.url', home_service: false, aggressive_pets_accepted: true);
business2.save

business3 = Listing.new(name: 'Michiko Pet Groomers', phone: '66948033', address: 'Esta Ruby #01-01, 500 Guillemard Rd
', postal_code: 399839, email: 'michikopetgroomers@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'michiko.url', home_service: true, aggressive_pets_accepted: false);
business3.save

business4 = Listing.new(name: 'Dog Haven Grooming Salon', phone: '61009663', address: '7 Jasmine Rd,
', postal_code: 576581, email: 'doghavengroomingsalon@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'doghavengrooming.url', home_service: true, aggressive_pets_accepted: true);
business4.save