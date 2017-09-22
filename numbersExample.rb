=begin
This is a multiline comment and con spwan as many lines as you
like. But =begin and =end should come in the first line only. 
=end

$num1 = 5          # global var
num2 = 7
num3 = $num1 + num2
# Ruby does int division when all vars are ints
num4 = num2 / $num1
NUM5 = 9.0         # constant
# The following will produce a float result
num6 = NUM5 / $num1
puts "\nAll nums so far are #{$num1} #{num2} #{num3} #{num4} #{NUM5} #{num6}"

a, b, c = 10, 20, 30   # multiple assignments
puts "\nNoobs are #{a} #{b} #{c}"