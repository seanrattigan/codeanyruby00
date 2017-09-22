=begin
Ruby Classes start with a capital, and use CamelCase
=end

class Person
  @@count = 0               # class var to count num instances
  # constructor in Ruby
  def initialize(name, age)
    # assign instance variables
    @name = name
    @age = age
    @@count += 1
  end
  def getName
    return @name
  end
  def getAge
    @age   # Is the return statement optional?
  end
  def setName(newName)
    @name = newName
  end
  def setAge(newAge)
    @age = newAge
  end
  # define to_s methods
  def to_s
      "Name:#@name, Age:#@age"  # string formatting of the object.
  end
  def self.printCount()
      return "Person count is : #@@count"
  end
  # Make a method thats protected
  def dontGoThere
    puts "I am in the FBI Program"
  end
  # if the next line of code is not coemmented,we get:
  # protected method `dontGoThere' called for #<Person:0x000000019a5a78 @name="Zack", @age=21> (NoMethodError)
  # make it protected
  #protected :dontGoThere
end

# We declare objects of a class using the 'new' keyword
person1 = Person.new("John", 21)
person2 = Person.new("Jane", 27)

puts person1.getName()  # are brackets for methods optional?
puts person2.getAge()

# Update via the setters
person1.setName("Zack")
person2.setAge(34)

# Check new data
puts person1.getName()
puts person2.getAge()

#print with the str method
puts "String representation of person is : #{person1}\n"
puts Person.printCount()

# try to print protected method if that line is not commented out
puts person1.dontGoThere