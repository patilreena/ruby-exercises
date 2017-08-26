# puts "Available Books"
# puts "Arts and Photography"
# puts "Computers and Technology"
# puts "Health, Fitness and Dieting"
# print "Enter your book:"
#
# book = gets.chomp
# case book
#   when "Arts and Photography"
#     puts 'Photo Ark'
#     puts 'The ot'
#     puts 'Strong is the new pretty'
#   when "Computers and Technology"
#     puts 'Databases & Big Data'
#     puts 'Web Development & Design'
#     puts 'Networking & Cloud Computing'
#   when "Health, Fitness and Dieting"
#     puts 'Nutrition'
#     puts 'Diets & Weight Loss'
#   else
#     puts "Diseases & Physical Ailments"
#   end

puts "Welcome to Amazon book store"
require 'terminal-table'
require 'colored'
list = [{
  'name' => 'The Grass is Always Greener',
  'author' => 'Jeffrey Archer',
  'genre' => 'Suspense'
}, {
  'name' => 'Murder!',
  'author' => 'Arnold Bennett',
  'genre' => 'Crime'
}, {
  'name' => 'A Boy at Seven',
  'author' => 'John Bidwell',
  'genre' => 'Crime'
}, {
  'name' => 'The Higgler',
  'author' => 'A. E. Coppard',
  'genre' => 'Romance'
}, {
  'name' => 'The Open Boat',
  'author' => 'Stephen Crane',
  'genre' => 'Classic'
}, {
  'name' => 'The Great Switcheroo',
  'author' => 'Roald Dahl ',
  'genre' => 'Romance'
}, {
  'name' => 'The Speckled Band',
  'author' => 'Charles Dickens',
  'genre' => 'Crime'
}, {
  'name' => 'The Signalman',
  'author' => 'Jeffrey Archer',
  'genre' => 'Suspense'
}, {
  'name' => 'The Five Orange Pips',
  'author' => 'Jeffrey Archer',
  'genre' => 'Modern Times'
}, {
  'name' => 'From a View to a Kill',
  'author' => 'Ian Fleming ',
  'genre' => 'Adventure'
}, {
  'name' => 'The Hostage',
  'author' => 'C. S. Forester',
  'genre' => 'Adventure'
}, {
  'name' => 'A Chance for Mr Lever',
  'author' => 'Thomas Hardy',
  'genre' => 'Romance'
}, {
  'name' => 'The Dancing Partner',
  'author' => 'Jerome K. Jerome',
  'genre' => 'Comedy'
}, {
  'name' => 'The Rocking-Horse Winner',
  'author' => 'D. H. Lawrence',
  'genre' => 'Comedy'
}]

class Book

  def initialize(name,author,genre)
    # @id = rand(1...1000)
    @name = name
    @author = author
    @genre = genre
    @stock = 100
  end

  def buy(quantity)
    if @stock >= quantity
      @stock = @stock - quantity;
    else
      raise 'No Stock'
    end
  end

  attr_accessor :name, :author, :genre, :stock
end

class Library

  def initialize()
    @books = []
  end

  attr_accessor :books

  def add_book(book)
    @books.push(book)
  end

  # def get_book_by_id(id)
  #   @books.find{ |book| book.id == id}
  # end

  def get_book_by_name(name)
    @books.find{ |book| book.name == name}
  end

  def get_book_by_genre(genre)
    @books.select{ |book| book.genre == genre}
  end

  def get_book_by_author(author)
    @books.select{ |book| book.author == author}
  end

  def print_books (books)
    puts "List of the books".red
    rows = []

    books.each { |book|
      rows << [book.name, book.genre, book.author, book.stock]
    }
    table = Terminal::Table.new :headings => ['Title', 'Genre', 'Author', 'Stock'], :rows => rows
    puts table
  end
end

library = Library.new

list.each { |item|
  book = Book.new(item["name"], item["author"], item["genre"])
  library.add_book(book);
}
library.print_books(library.books)

while true
  puts "Search by book name"
  name = gets.chomp

  book = library.get_book_by_name(name)

  puts "*********************************"
  puts "Here are the details of the book you searched for"
  puts "Title: #{book.name}", "Author: #{book.author}", "Genre: #{book.genre}"
  puts "*********************************"
  puts "Recomendations"
  books_by_genre = library.get_book_by_genre(book.genre);
  books_by_author = library.get_book_by_author(book.author);
  library.print_books(books_by_genre.push(*books_by_author))
  puts "*********************************"
  puts "Would you like to buy this book?[yes/no]"
  response = gets.chomp
  if response == "yes"
  puts "Please enter the quantity"
  quantity = gets.chomp.to_i
  book.buy(quantity)
  puts "Congratulations your shipping is on the way"
  puts "*********************************"
  puts "Here is the updated stock of the book", book.stock
else
    puts "That's all right,keep exploring. Thank you for visiting our site."
  end
  exit

end
