print "enter the first number"
num1= gets.chomp.to_i
print "enter the second number"
num2= gets.chomp.to_i
print "would you like to 'add' 'sub' 'mul' 'div'?"
operator = gets.chomp

if operator == "add"
  puts num1 + num2;
elsif operator == 'sub'
  puts num1 - num2;
elsif operator == 'mul'
  puts num1 * num2;
elsif operator == 'div'
  puts num1 / num2;
else
  puts 'Operator is not supported';
end
