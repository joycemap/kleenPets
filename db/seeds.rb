# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(email: 'foo@bar.com', encrypted_password: '123456', created_at: 'now', updated_at: 'now', username: 'Pawprints');
user1.save

user2 = User.new(email: 'groomer2@gmail.com', encrypted_password: '123456', created_at: 'now', updated_at: 'now', username: 'Surrpaws');
user2.save

user3 = User.new(email: 'groomer3@gmail.com', encrypted_password: '123456', created_at: 'now', updated_at: 'now', username: 'Michiko');
user3.save

customer1 = Customer.new(email: 'john@gmail.com', password: '123456', username:'John');
customer1.save
customer2 = Customer.new(email: 'amy@gmail.com', password: '123456', username:'Amy');
customer2.save
customer3 = Customer.new(email: 'tina@gmail.com', password: '123456', username:'Tina');
customer3.save