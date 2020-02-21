# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

business1 = Listing.new(name: 'Pawtraits Pte Ltd', phone: '88622211', address: '96 Yio Chu Kang Road', postal_code: 545574, email:'pawtraits@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://i.picsum.photos/id/241/200/300.jpg', home_service: true, aggressive_pets_accepted: true, created_at: '2020-02-19 10:50:54.254388', updated_at: '2020-02-19 10:50:54.254388', user_id: 1);
business1.save

business2 = Listing.new(name: 'Surrpaws Pet Grooming', phone: '88457183', address: 'Kensingston Square, 2 Jln Lokam, #01-21', postal_code: 537846, email: 'surrpawspetgrooming@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://i.picsum.photos/id/237/200/300.jpg', home_service: false, aggressive_pets_accepted: true, created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 1);
business2.save

business3 = Listing.new(name: 'Michiko Pet Groomers', phone: '66948033', address: 'Esta Ruby #01-01, 500 Guillemard Rd', postal_code: 399839, email: 'michikopetgroomers@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://i.picsum.photos/id/842/200/300.jpg', home_service: true, aggressive_pets_accepted: false, created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 2);
business3.save

business4 = Listing.new(name: 'Dog Haven Grooming Salon', phone: '61009663', address: '7 Jasmine Rd', postal_code: 576581, email: 'doghavengroomingsalon@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://i.picsum.photos/id/875/200/300.jpg', home_service: true, aggressive_pets_accepted: true, created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 2);
business4.save

business5 = Listing.new(name: 'Paw Pte Ltd', phone: '88622211', address: '#01-1195 , Blk 12 Toa Payoh Ind Pk Lor 8', postal_code: 319064, email:'pawtraits@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 25, image_url: 'https://i.picsum.photos/id/738/200/300.jpg', home_service: true, aggressive_pets_accepted: true), created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 2;
business5.save

business6 = Listing.new(name: 'Sur Pet Grooming', phone: '88457184', address: 'Kensingston Square, 2 Jln Lokam #01-21', postal_code: 637846, email: 'surrpawspetgrooming@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 75, image_url: 'https://i.picsum.photos/id/1008/200/300.jpg', home_service: false, aggressive_pets_accepted: true, created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 3);
business6.save

business7 = Listing.new(name: 'Mich Pet Groomers', phone: '66948033', address: 'Esta Ruby #01-01, 500 Guillemard Rd', postal_code: 399839, email: 'michikopetgroomers@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 100, image_url: 'https://i.picsum.photos/id/115/200/300.jpg', home_service: true, aggressive_pets_accepted: false, , created_at: '2020-02-19 19:50:54.254388', updated_at: '2020-02-19 19:50:54.254388', user_id: 3);
business7.save

business8 = Listing.new(name:  'Haven Grooming Salon', phone: '81009663', address: '7 Orchard Rd', postal_code: 576581, email: 'havengroomingsalon@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 150, image_url: 'https://i.picsum.photos/id/938/200/300.jpg', home_service: true, aggressive_pets_accepted: true, created_at: '2020-02-19 10:50:54.254388', updated_at: '2020-02-19 10:50:54.254388', user_id: 3);
business8.save