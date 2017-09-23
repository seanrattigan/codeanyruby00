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

# Hawkat inherits from Lion
class Hawkat < Lion
  def fly
    puts "I believe I can fly"
  end
end

# main program
puts "\tDodger and Roger are Cats <- Mammal"
dodger = Cat.new                # will use defaults from init in Parent Class
roger = Cat.new("Roger", 3.14)  # Initialised
puts dodger.getName()           # inherited method
puts dodger.getWeight()         # inherited method
puts roger               # inherited toString method
dodger.speak()           # Cat method

puts "\n\tLion Time <- Mammal"
lion1 = Lion.new        # will use defaults from init in Parent Class
puts lion1              # inherited toString method
lion1.speak()           # Lion method

puts "\n\tHawkat <- Lion <- Mammal"
myth = Hawkat.new     # will use defaults from init in super (Mammal) Class
myth.speak()          # Inherited from Lion
myth.fly()            # Hawkat method