# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

business1 = Listing.new(name: 'Pawtraits Pte Ltd', phone: '+6581337715', address: '96 Yio Chu Kang Road', postal_code: 545574, email:'pawtraits@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'http://placekitten.com/g/200/300', home_service: true, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 1);
business1.save

business2 = Listing.new(name: 'Surrpaws Pet Grooming', phone: '+6584581841', address: 'Kensingston Square, 2 Jln Lokam, #01-21', postal_code: 537846, email: 'surrpawspetgrooming@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'http://placekitten.com/200/300', home_service: false, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 1);
business2.save

business3 = Listing.new(name: 'Michiko Pet Groomers', phone: '+6566948033', address: 'Esta Ruby #01-01, 500 Guillemard Rd', postal_code: 399839, email: 'michikopetgroomers@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://picsum.photos/id/237/200/300.jpg', home_service: true, aggressive_pets_accepted: false, created_at: 'now', updated_at: 'now', user_id: 2);
business3.save

business4 = Listing.new(name: 'Dog Haven Grooming Salon', phone: '+6561009663', address: '7 Jasmine Rd', postal_code: 576581, email: 'doghavengroomingsalon@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 50, image_url: 'https://placedog.net/200/300?id=28', home_service: true, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 2);
business4.save

business5 = Listing.new(name: 'Sur Pet Grooming', phone: '+6588457184', address: 'Kensingston Square, 2 Jln Lokam #01-21', postal_code: 637846, email: 'surrpawspetgrooming@gmail.com', description: 'Provides grooming and cleaning service for pets', price: 75, image_url: 'https://i.picsum.photos/id/659/200/300.jpg', home_service: false, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 3);
business5.save

business6 = Listing.new(name:  'The Grooming Table', phone: '+6581009663', address: '55 Lengkok Bahru, #01-391', postal_code: 151055, email: 'service@thegroomingtable.com.sg', description: 'Our grooming salon has come a long way since our inception in 2012 and all our groomers have at least 8 years of experience. Now, hundreds of owners trust us to groom their pets regularly. We are grateful for that trust and we will continue to put in maximum effort for each and every pet. We can never repay what our animal friends have given us and doing the best we can, is the least we can do.', price: 150, image_url: 'https://placedog.net/200/300?id=12', home_service: true, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 2);
business6.save

business7 = Listing.new(name:  'MAD About Grooming!', phone: '+6590691148', address: '221 Balestier Rd, #01-10 Rocca Balestier,', postal_code: 329928, email: 'groomingsalon@gmail.com', description: 'Pets are human's best friends, they too deserve special treatment. Let the professional pet groomers from Happy Pet Singapore make every grooming session a comfortable and pleasant experience for your fur kids', price: 150, image_url: 'https://placedog.net/200/300?id=53', home_service: true, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 2);
business7.save
business7 = Listing.new(name:  'Happy Pet Singapore', phone: '+6592232646', address: 'Indus Rd, #01-511 Block 77', postal_code: 160077, email: 'enquiry@happypetsingapore.com', description: 'Provides grooming and cleaning service for pets', price: 150, image_url: 'https://placedog.net/200/300?id=15', home_service: true, aggressive_pets_accepted: true, created_at: 'now', updated_at: 'now', user_id: 1);
business7.save