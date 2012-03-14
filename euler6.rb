# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# 
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# 
# Answer:25164150

x = (1..100).to_a
squares = []


x.each do |y|
  z = y*y
  squares.push(z)
end

z = squares.inject(:+)

sumsquared = (x.inject(:+))*(x.inject(:+))

puts "The sum of the squares of the first 100 natural numbers is #{z}"
puts "The sum of the first 100 natural numbers squared is #{sumsquared}"

puts "The difference between them is #{sumsquared - z}"