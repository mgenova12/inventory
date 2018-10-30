# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  
# order_num = 0
# Order.all.count.times do
#   Product.all.each do |product|
#     Invent.create(product_id: product.id, amount:rand(1..30), order_id: Order.all.ids[order_num])
#   end
#   order_num +=1 
# end


#Deletes all deleted Products
Product.where(deleted: true).destroy_all
CambridgeProduct.where(deleted: true).destroy_all
TrappeProduct.where(deleted: true).destroy_all

Order.all.destroy_all
TrappeOrder.all.destroy_all
CambridgeOrder.all.destroy_all
BypassOrder.all.destroy_all

Invent.all.destroy_all
TrappeInvent.all.destroy_all
CambridgeInvent.all.destroy_all
BypassInvent.all.destroy_all

#Generates All New barcodes
# Product.all.each do |product|
#   product.update(barcode: rand.to_s[2..13])
# end

#Destroys last 5 Orders Dover
# Order.first(5).each do |order|
#   Invent.where(order_id: order.id).destroy_all
#   order.destroy
# end

#Generates Random Prices
# Product.all.each do |product|
#   product.update(price: rand(11.2...76.9).round(2))
# end

