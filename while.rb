if  a = ARGV[0].to_i
else
    a = 1
end
#a = if ARGV[0]
#    ARGV[0].to_i
#else
#    1
#end

while a < 10
    a += 1
    puts "a = " + a.to_s
    sleep 1
end