class Person

  def initialize(name,gender,age)
    @name = name
    @gender = gender
    @age = age
  end

  def name
	  @name
  end

end

result = Person.new("Reena","female",25)
puts result.name
