hungry = true

if true; puts "i am so hungry" end


def say_greeting(bool)
if bool
  "hello"
else
  "good bye"
end
end

greeting = false

puts greeting ? say_greeting(true) : say_greeting(false)
