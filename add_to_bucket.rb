require_relative "call"

bucket = Bucket.new(ARGV.delete_at(0))
ARGV.each do |a|
    @items.each { |i| bucket.add_item(i) if a == i.name }
end
bucket.read_from_file
begin
    bucket.save_to_file
rescue Bucket::ItemNotSupported
    puts "One of the Items isn't support by the Bucket!
    Unsupported are: #{Bucket::UNSUPPORTED_ITEMS}"
end