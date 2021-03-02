# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
VendorSweet.destroy_all
Vendor.destroy_all
Sweet.destroy_all
VendorSweet.reset_pk_sequence
Vendor.reset_pk_sequence
Sweet.reset_pk_sequence


vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

5.times do
  VendorSweet.create(price: (1 ..50).to_a.sample, vendor: Vendor.all.sample, sweet: Sweet.all.sample)
end
puts "🧁🍪🍭SEEDED🍫🍬🍧"