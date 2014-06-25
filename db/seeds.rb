# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create admin user
User.delete_all
User.create(user_name: 'System', company_name: 'Administrator', tel: '011', password: '1234', password_confirmation: '1234', role: "admin")
User.create(user_name: 'seller', company_name: 'Selling', email: 'sellme@yahoo.com', password: '1234', password_confirmation: '1234', role: "seller")
User.create(user_name: 'Buyer', company_name: 'Buying', email: 'buyme@yahoo.com', password: '1234', password_confirmation: '1234', role: "buyer")

puts "users seeded"


# Create some product categories
Egg.delete_all

 eggs = Egg.create({
  user_id:2,
  company: "Seller",
  location:"Bole",
  type_of_egg:"Ferenji",
  daily_quantity:199,
  price:2.50,
  reciept:"Vat"
  })

puts "eggs seeded"
# Create some products
EggOrder.delete_all
500.times do |i|
 EggOrder.create([
  {
    
    egg: eggs,
    user_id: 3,
    company: "Buying",
    location: "Piassa",
    price: 4.00,
    daily_quantity: 10,
    accepted: FALSE
  }
])
end
puts "egg orders seeded"

Honey.delete_all

 honeys = Honey.create({
  user_id:2,
  company: "Seller",
  location:"Bole",
  honey_type:"Red_Welela",
  amount:199,
  price:80,
  reciept:"Vat",
  condition:"packed"
  })

puts "honeys seeded"
# Create some products
HoneyOrder.delete_all
500.times do |i|
 HoneyOrder.create([
  {
    
    honey: honeys,
    user_id: 3,
    company: "Buying",
    location: "Piassa",
    price: 100,
    amount: 10,
    accepted: FALSE
  }
])
end
puts "honey orders seeded"
