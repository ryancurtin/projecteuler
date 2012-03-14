
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
# 
# Answer:  6857


# Solution is slow, mostly due to generating primes - there is a built in method in Ruby 1.9 to get primes, but I was running 1.8.7 in Textmate
x = 600851475143
i = 2
numbers = []
numbers[2..x] = (2..x).to_a

for i in (2..Math.sqrt(x))

  if numbers[i]
    (i*i).step(x, i) do |rm|
      numbers[rm] = nil
    end
  end
  
end
  
factors = []    
numbers.each do |num|
  factors << num if x % num == 0
end

print factors.sort.last

