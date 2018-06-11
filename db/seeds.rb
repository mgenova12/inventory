# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Product.destroy_all
Order.destroy_all
Invent.destroy_all


10.times do 
  Product.create(name: Faker::Food.ingredient, location: ['Walk-in Self 1','Walk-in Self 2','Walk-in Self 3','Walk-in Self 4','Walk-in Self 5', 'Walk-in Self 5'].sample, measurement:['EA', 'BIN'].sample, prepped:[false, true].sample, tuesday_max: rand(3..10), thursday_max: rand(3..10), deleted: false)
end

