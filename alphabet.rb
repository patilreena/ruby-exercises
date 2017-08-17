alphabet = ["a","b","c","d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
  "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"]
firstLetter = alphabet[0]

alphabet.push("z")
alphabet.each do |letter|
puts "This letter is #{letter}"
end
