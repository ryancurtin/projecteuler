# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?
# 
# Answer: 104743

require 'mathn'
  begin
    if i.prime?
      primes << i
      i += 1
    else 
      i += 1
    end while primes.length < 10002
    
    puts primes.last
  
  end
