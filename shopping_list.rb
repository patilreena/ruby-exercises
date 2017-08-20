shoppingList = []

puts "Welcome to shopping"
puts "would you like to add an items? [yes/no]"
response = gets.chomp

addItems = true  #declared a variable and assigned a value to a variable
if response == "yes"
    while addItems do
      puts "what would you like to add?"
      item = gets.chomp
      unless item.to_s.strip.empty? #check if the entered item is not blank
        shoppingList.push(item)
      else  #if entered item is empty
        addItems = false
        puts "Thank you, here is your shipping list: "
        puts shoppingList
      end
    end
else
    puts "Thank you , you can always create a shopping list later by running this app"
end
