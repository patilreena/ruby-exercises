def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end
# ARGV is an array which contains the command line arguments, and to_i converts
# a character string to an integer.
puts fact(ARGV[0].to_i)


#if you run the program with ruby factorial.rb 5
#The output is 120
