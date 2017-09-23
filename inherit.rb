=begin
Ruby Classes to demonstrate inheritance
=end

class Mammal
  @@count = 0               # class var to count num instances
  # constructor in Ruby with defaults set
  def initialize(theName = "Not Set", theWeight = 1.01)
    # assign instance variables
    @name = theName
    @weight = theWeight
    @@count += 1
  end
  def getName()
    return @name
  end
  def getWeight()
    return @weight
  end
  def to_s    # toString method
      "Name:#@name, Weight:#@weight"  # string formatting of the object.
  end
end

# Cat inherits from mammal
class Cat < Mammal
  def speak
    puts "Meow"
  end
end

# Lion inherits from mammal
class Lion < Mammal
  def speak
    puts "Roar"
  end
end

# Chimera inherits from Lion
class Hawkat < Lion
  def fly
    puts "I believe I can fly"
  end
end

# main program
dodger = Cat.new 
puts dodger.getName()
puts dodger.getWeight() 
dodger.speak()
lion1 = Lion.new 
puts lion1
lion1.speak()
myth = Hawkat.new 
myth.speak()
myth.fly()