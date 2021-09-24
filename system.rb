#print "Enter your name:"
#name = gets
#puts "Your name is " + name

puts "Using backticks:"
res = %x(time /t)    # %x(time /t) így is lehet
puts res

puts "Using system:"
res = system "time /t"
puts res 

# időt kéne kiírnia - 2x
# + true

