# # This puzzle is "guess the word," but perhaps the word "puzzle" is too dignified
# # for what is to follow
#
#
# words = ['love', 'friendship', 'family']
# secret = words[rand(3)] #a random number in the range 0 to 2. This random number
#  # is used to extract one of the members of the array words.
#
# print "guess? "
# while guess = STDIN.gets  # STDIN is the standard input object.
# #Usually, guess=gets does the same thing as guess=STDIN.getsguess.chop!
#   if guess == secret
#     puts "You win!"
#     break
#   else
#     puts "Sorry, you lose."
#   end
#   print "guess? "
# end
# puts "The word was ", secret, "."


#case
i=8
 case i
 when 1, 2..5
 puts "1..5"
when 6..10
  puts "6..10"
 end


#while
 i = 0
num = 5

while i < num  do
  puts i
   i +=1
end


#for
for i in 0..5
   puts i
end
