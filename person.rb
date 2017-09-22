=begin
Ruby Classes start with a capital, and use CamelCase
=end

class Person
  # constructor in Ruby
  def initialize(name, age)
    # assign instance variables
    @name = name
    @age = age
  end
  def getname
    return @name
  end
  def getage
    @age   # Is the return statement optional?
  end
end

# We declare objects of a class using the 'new' keyword
person1 = Person.new("John", 21)
person2 = Person.new("Jane", 27)

puts person1.getname()  # are brackets for methods optional
puts person2.getage()
