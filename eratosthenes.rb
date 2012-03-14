# Sieve of Eratosthenes to determine the prime numbers below a specified number

# For most of my solutions I have been using the built in Ruby 1.9 prime? method, but I wanted to try to write this (with help from pseudocode at http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Implementation)


require 'mathn'

def eras(n)
numbers = []
numbers[0] = nil
numbers[1] = nil
numbers[2..n] = (2..n).to_a



for i in (2..Math.sqrt(n))

  if numbers[i]
    (i*i).step(n, i) do |rm|
      numbers[rm] = nil
    end
  end
  
end
      
print numbers.compact

end


eras(1000)


