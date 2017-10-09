# Object is an instance of a class and class is the blueprint from which
# individual objects are created.
#for example:
#Class Person
# def initialize (name)
# @name = name
#  end
# def name
#  @name
#   end
# end
# Person is a simple class with a property called name.
# All the objects created using Person will have a property name
#person1 = Person.new('John')
# person1.name # John


# Variable are the memory locations, which hold data and instance variables are
# the variable defined in the class


# Gem are the libraries in ruby package manager and they are reusable readily
# available code


# Arrays: Arrays are used to store collections of data. We can access any value
# in the array using this unique key. The positions in an array starts from " 0 ".
#  The first element is located at " 0 "
#
# Example: Try the following
#
# arr = ["a", "b", [1, 2]]
# You have 3 elements in the array.
#
# puts arr[1]
# a
# Add a new element to position 3.
#
# bikes[3] = "c"
#
# Hashes: Like arrays, Hashes are also used to store data but using key value pairs
#
# bikes = Hash.new
# bikes = {
# 'Bajaj' => 'Pulsar 220, Pulsar 200, Pulsar 180 and Pulsar 150',
# 'Honda' => 'Unicorn, Shine and Splendor',
# 'TVS' => 'Apache, Star City, and Victor'
# }
#
# bikes['Bajaj']
# You get => "Pulsar 220, Pulsar 200, Pulsar 180 and Pulsar 150"

if(temperature > 30)
    if(raining == false)
     # Run something
    else
     # Run something else
    end
end



def operate(num1,num2, operator)
    if operator == 'add'
        return num1 + num2
    elsif operator == 'subtract'
        return num1 - num1
    elsif operator == 'multiply'
        return num1 * num1
    elsif operator == 'divide'
        return num1 / num1
    else
         "Operator not supported"
    end
end
