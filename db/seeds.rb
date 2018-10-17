# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

# Order.destroy_all
# Invent.destroy_all

# TrappeOrder.destroy_all
# TrappeInvent.destroy_all
  

# order_num = 0
# Order.all.count.times do
#   Product.all.each do |product|
#     Invent.create(product_id: product.id, amount:rand(1..30), order_id: Order.all.ids[order_num])
#   end
#   order_num +=1 
# end


#Deletes all deleted Products
#Product.where(deleted: true).destroy_all

#Generates New barcodes
# Product.all.each do |product|
#   product.update(barcode: rand.to_s[2..13])
# end

#Destroys last 5 Orders
# Order.first(5).each do |order|
#   Invent.where(order_id: order.id).destroy_all
#   order.destroy
# end



