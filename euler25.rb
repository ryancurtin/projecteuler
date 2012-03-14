# The Fibonacci sequence is defined by the recurrence relation:
# 
#     Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# 
# Hence the first 12 terms will be:
# 
#     F1 = 1
#     F2 = 1
#     F3 = 2
#     F4 = 3
#     F5 = 5
#     F6 = 8
#     F7 = 13
#     F8 = 21
#     F9 = 34
#     F10 = 55
#     F11 = 89
#     F12 = 144
# 
# The 12th term, F12, is the first term to contain three digits.
# 
# What is the first term in the Fibonacci sequence to contain 1000 digits?
# 
# Answer: 4782

def fibonaccidigits(z)
  x = 1
  y = 1
  i = 0
  results = []
  if z == 0 
    return 0
  elsif z == 1 
    return 1
  else
  while i < z
    results.push(x)
    x, y = y, x + y

    i += 1
  end
end
   return results.last.to_s.split(//).count
end



begin
  i = 2000
  while fibonaccidigits(i) < 1001
  i += 1
end
print i 
end