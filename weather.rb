print "what is the temperature? "
temp = gets.chomp.to_i


if temp > 20
   puts "wear shorts"
else temp <= 20
   puts "wear pants"
end
