# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# 
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
# 
# Answer: 9110846700

numbersarray = []
i = 1
while i < 1001
  numbersarray.push(i**i)
  i +=1
  end

sum = numbersarray.inject(:+)

digits = sum.to_s.chars.to_a

puts digits.to_s[-10..-1]
