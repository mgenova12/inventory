# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

# Order.destroy_all
# Invent.destroy_all
# TrappeProduct.destroy_all
# TrappeOrder.destroy_all
# TrappeInvent.destroy_all

User.destroy_all

# dont put in seed file!!!
User.create(email: , role:0, password: , password_confirmation:)




# 20.times do 
#   Order.create(status: 'saved')
# end

# order_num = 0
# Order.all.count.times do
#   Product.all.each do |product|
#     Invent.create(product_id: product.id, amount:rand(1..30), order_id: Order.all.ids[order_num])
#   end
#   order_num +=1 
# end


#Product.where(deleted: true).destroy_all

#products ids 144- 378
