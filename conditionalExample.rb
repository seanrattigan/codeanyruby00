=begin
Ruby uses if, elsif, else, and another odd one called unless.Ruby
Sample code is shown below
=end

num1 = 7.0
num2 = 7
num3 = num1 + num2
# Ruby does int division when all vars are ints
num4 = num2 / num1
num5 = 9.0
# The following will produce a float result
num6 = num5 / num1

puts "\n\tFirst conditional block\n"
if (num2 > num1) then
  puts "#{num2} is bigger than #{num1}"
elsif (num1 > num2) then
  puts "#{num1} is big compared to #{num2}"
else
  puts "They must be the same"
end

puts "\n\tSecond conditional block\n"
unless (num2 == num1) then        # Executes code if conditional is false
  puts "They are not the same"
else
  puts "Unless block not executed, so nums must be the same"
end
  