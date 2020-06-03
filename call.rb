require_relative "store_application"

StoreApplication.config do |app|
    app.name = "My Store"
    app.enviroment = :production

    app.admin do |admin|
        admin.email = "biosoln91@gmail.com"
        admin.login = "admin"
        admin.send_info_emails_on :mondays
    end
end

#unless StoreApplication.frozen?
#StoreApplication = "Some name"
#end
#StoreApplication::Admin.email = "new@email.com"
#p StoreApplication::Admin.email
#p StoreApplication.enviroment
#p StoreApplication.name
#p StoreApplication::Admin.email
#p StoreApplication::Admin.login
#StoreApplication.new
#StoreApplication.new

@items = []
@items << AntiqueItem.new("car", price: 201, weight: 800)
@items << RealItem.new({:name => "kettle", :price => 201, :weight => 500})
@items << RealItem.new({:name => "dishwasher", :price => 150, :weight => 500})

order = Order.new
order.place
puts order.placed_at.strftime("%b %-d, %Y %H:%M:%S ")
puts order.time_spent

#ucket = Bucket.new("oleh")
#bucket.add_item RealItem.new({:name => "car", :price => 201, :weight => 500})
#bucket.add_item RealItem.new({:name => "car", :price => 150, :weight => 500})
#bucket.add_item RealItem.new({:name => "kettle", :price => 201, :weight => 500})
#p bucket.all_cars
#p bucket.all_kettle

#order = Order.new
#@items.each { |i| order.add_item(i) }
#order.place

#puts @items[0].kind_of?(Item)
#puts @items[0].kind_of?(AntiqueItem)
#puts @items[0].kind_of?(Bucket)
#puts @items[1].respond_to?(:info)
#puts @items[0].class
#puts @items[0].send(:tax) # private method also


#item1 = VirtualItem.new({:price => 201, :weight => 800, :name => "Meat" })
#item1.info {|properties| puts properties}
#item2 = RealItem.new({:price => 201, :weight => 500, :name => "Shugar"})
#item2.info {|properties| puts properties}
#item3 = RealItem.new({:price => 10, :weight => 500, :name => "Rice"})

#puts "----------------------------------------------------------"

#bucket = Bucket.new
#bucket.add_item item1
#bucket.add_item item2
#bucket.add_item item3
#p bucket.items.size

#puts "----------------------------------------------------------"

#bucket.delete_invalid_item
#p bucket.items
#puts Item.discount.round(2) 
#puts item1.price.round(2)
#puts item1.real_price.round(2)
#puts item1.tax
#puts "_____________________________"m
#order = Order.new
#order.add_item item1
#order.add_item item2
#order.add_item item3
#order.remove_item
#p order.items.size

#puts order.count_valid_items

=begin
bucket = Bucket.new
item1.price = 100
bucket.add_item(item1)
p bucket

bucket.add_item(Item.new)
bucket.my_validate
p bucket.items
bucket.remove_item
p bucket.items
=end
