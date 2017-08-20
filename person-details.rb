require 'terminal-table'

class Person
  def initialize(name,age,addr)
     @name = name
     @age = age
     @addr = addr
   end

  def name
    @name
  end

  def age
    @age
  end

  def addr
    @addr
  end

end

class Group
  def initialize()
    @people = []
  end

  def add_people(name, age, addr)
    if name.to_s.empty? && age.to_s.empty? && addr.to_s.empty?
      return raise "Please supply all the required araguments : Name, Age, Address"
    end
    @people.push(Person.new(name, age, addr))
  end

  def show
    rows = []
    @people.each do |obj|
        rows.push([obj.name, obj.age, obj.addr]);
    end

    table = Terminal::Table.new :headings => ['Name', 'Age', 'Address'], :rows => rows
    puts table
  end
end


group = Group.new()
group.add_people("Reena", 45, "2127")
group.show()
group.add_people("John", 23, "21237")
group.show()
group.add_people("Lisa", 24, "23127")
group.show()
group.add_people("Dom", 18, "218080827")
group.show()
group.add_people("Girish", 24, "218080827")
group.show()


 # result = Person.new("Reena", 25, "patil")
 # puts result.name
