# Ruby has four types of variable scope, local, global, instance and class.
# In addition, Ruby has one constant type

# Name Begins With	   Variable Scope
# $	                  global variable
# @	                  instance variable
# [a-z] or _             local variable
# [A-Z]	                 constant variable
# @@	                   class variable


#Defining and assigning a values to variable
name = "Reena"
puts "my name is #{name}"  # string interpolation

#string methods
# 1-.upcase
# 2-.downcase
# 3-.capitalize
# 4-.length
# 5-.reverse

#string interpolation

print "What's your first name? "
first_name = gets.chomp.capitalize!

print "What's your last name? "
last_name = gets.chomp.capitalize!

print "What city are you from? "
city = gets.chomp.capitalize!

print "What state or province are you from? "
state = gets.chomp.upcase

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

#Conditions or Statements

# 1- if Statements

if 10 > 5
  puts "true"
end

# 2- else Statements

if 2 > 5
 puts "true"
 else
 puts "false"
end

# 3- elsif Statements

x = 50.5
if x >=10 and x<=24
  puts "one"
  elsif x>24 and x<=50
  puts "two"
  elsif x>50 and x<=70
  puts "three"
  else
  puts "not a num"
end

# 4- unless Statements  - Reverse of if

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

  #OR

x = 90
unless x == 90
  puts "true"
  else
  puts "false"
end

# Operators in Ruby

== , < , > , != , <= , >=

&& , || , !


# User input

gets.chomp

#########  General ruby methods  ########

 1- .include?

  print "Pleathe enter a thtring: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  print "This string has an s."
end

 2- .gsb!   # for substitution (s)ai = (ra)ai

  print "Pleathe enter a thtring: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "There are no 's's in your string."
end

puts "msg is #{user_input}"

3- The .split Method
###### REDACTED#########

puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|

if word == redact
  print "REDACTED "
else
  print word + " "
end

end



##### Loops in ruby #########

1- while loop  #first check the Conditions and execute

i = 0
while i < 10
  puts i
  i = i + 1
end

2- untill

counter = 1
until counter > 10
  puts counter
  counter = counter + 1
end

3- for loop
 # it displays a numbers 1-20 including 20
for num in 1..20
  puts num
end

# it displays a numbers 1-20 not-including 20
for num in 1...20
 puts num
end

4- loop method  #first execute and then check the condition

i = 0
loop do
  i += 1
  print "#{i}"
  break if i >= 20
end

5- next!   # The next keyword can be used to skip over certain steps in the loop

i = 20
loop do
  i -= 1
  next if i%2 !=0
  print "#{i}"
  break if i <= 0
end

########### Iterating with .times ######

10.times {print "reena"}

#Loop the Loop with Loop

name = 0   ##print the name 30 times using loop
loop do
  name += 1
  print "Ruby!"
  break if name >= 30
end

#########  Arrays in ruby ########  An array is just a list of items

#Defining and assigning a values to Arrays

my_array = [1,2,3,4,5]

##########  string_array  ###########

string_array = ["These", "are", "some", "strings"]

##########   Array Access by Index   ########

demo_array = [100, 200, 300, 400, 500]

print demo_array[2]

###########  Arrays of Arrays or Multidimensional array #########

my_2d_array = [[1,2,3],[4,5,6],[7,8,9]]

########The .each Iterator#########

my_array = [1,2,3,4,5]

my_array.each do |x|
  x += 10
  puts "#{x}"
end

###### OR ########

person = [{
  "name" => "Reena"
  },
  {
   "name" => "giri"
   },
  {
   "name" => "yashu"
   },
  {
    "name" => "rashu"
    },
  ]

person.each do |list|
  puts list["name"]
end


##########  Iterating Over Arrays ########

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each do |items|
  puts items
end

########  Iterating Over Multidimensional Arrays  ########

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
  sub_array.each do |items|
    puts items
  end
end


###########   Hashes  ##########

There are 2 methods in creating  a new hash

my_hash = {
  "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]


########## OR #########

pets = Hash.new
pets["abc"] = "cat"
pets["def"] = "dog"
pets["ghi"] = "rat"


#########  Accessing Hash Values   ##########

pets = Hash.new

pets["Luna"] = "cat"

puts pets["Luna"]

###### Iterating Over Hashes ######

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |key,value|
  puts "#{key}: #{value}"
end


##### Please puts out the value of each pair (just the value, not the key).

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |key,value|
  puts "#{value}"
end



########## .each iterator to iterate over arrays and hashes #####

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


#########  Create a Histogram  ##########

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word, count|
  count
end

frequencies.reverse!

frequencies.each do |word, frequency|
  puts word + " " + frequency.to_s
end

######  class and instances #########

class Biscuits

  def initialize(bname,taste,color)
    @bname = bname
    @taste = taste
    @color = color
  end

  attr_accessor :bname, :taste, :color
end
  ######  instances #########
par = Biscuits.new("abc","def","red")
gooday = Biscuits.new("efb","ddd","ddd")


###### methods  #########

def length_array(array)
  return array.length
end

length = length_array([reena])
