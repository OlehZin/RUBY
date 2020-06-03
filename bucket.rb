class Bucket

    UNSUPPORTED_ITEMS = [AntiqueItem, VirtualItem]

    attr_reader :items, :owner
    
    include ItemContainer
    
    class ItemNotSupported < StandardError; end



    def initialize(owner)
        @items = Array.new
        @owner  = owner
    end

    def add_items(*items)
        @items += items
    end

    def save_to_file
        File.open("#{@owner}_bucket.txt", "w") do |f| @items.each do |i| 
            raise ItemNotSupported if UNSUPPORTED_ITEMS.include?(i.class)
            f.puts i  #car:100:50
            end
        end
    end
    
    def read_from_file
        #return unless File.exists?("#{@owner}_bucket.txt")
        #begin
        #10 / 0
        File.readlines("#{@owner}_bucket.txt").each { |i| @items << i.to_real_item } #"car:100:50\n"
        @items.uniq!
    rescue Errno::ENOENT
            File.open("#{@owner}_bucket.txt", "w") {}
            puts "#{@owner}_bucket.txt created"
        #item_fields.map! { |i| i.chomp } #"car:100:50"
        #item_fields.map! { |i| i.split(":") } # ["car", "100", "50"]
        #item_fields.each { |i| @items << RealItem.new(name: i[0], price: i[1].to_i, weight: i[2].to_i) }
    end

end

