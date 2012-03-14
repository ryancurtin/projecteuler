# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# 
# Answer: 142913828922

require 'mathn'

i = 2
primes = []
begin
  if i.prime?
    primes << i
    i += 1
  else
    i += 1
  end while i < 2000000
print primes.inject(:+)
end