require "rspec"
require_relative "../item"
require_relative "../virtual_items"
require_relative "../antique_items"
require_relative "../item_container"
require_relative "../bucket"

describe Bucket do

    #it "makes sure the bucket is initialized correctly" do
    #    bucket = Bucket.new()
    #    bucket.items.should be_kind_of(Array)
    #    bucket.owner.should_not be_nil

    #end

    describe "managing items" do

        it "adds items into the bucket" do
            bucket = Bucket.new("oleh")
            item1 = Item.new("kettle", price: 200)
            item2 = Item.new("car",    price: 200)
            bucket.add_items(item1, item2)
            #expect bucket.items.should include(item1, item2)
            bucket.items.should include(item1, item2)
        end

        it "removes items from itself"

    end

    it "counts items in itself"
    it "places order using all the items, that were added into the bucket"
    it "clears itself off the items after an order is placed"

end
