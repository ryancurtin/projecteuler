# My first brute force solution -- took too long
# require 'mathn'
# Test to see if a number is divisible by 1..20 -> Brute force solution
# (1..Math.sqrt(25000000)).to_a.each do |x|
#   if x % 4 == 0 && x % 5 == 0 && x % 6 == 0 && x % 9 == 0 && x % 7 == 0 && x % 11 == 0 && x % 13 == 0 && x % 17 == 0 && x % 19 == 0
#     puts x
#     break
#   end
# end



def lcm(*divisors)
  divisors.inject do |m, n|
    #Answer is zero if m or n is zero
    next 0 if m == 0 or n == 0
      #Setting i = m so we can loop through simultaneously
      i = m
      #Looping multiples of m to see if it's divisible by n; if it is, the
      #loop breaks and that number is the LCM.  If not, i increases by a
      #multiple of m
      loop do
        break i if i % n == 0
        i += m
      end
  end
end
print lcm(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)