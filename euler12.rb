# INCOMPLETE

def triangle(x)
  result = []
  while x > 0
    result.push(x)
    x = x - 1
  end
  return result.inject(:+)
end



def divisors(y)
  result = []
  i = 1
while i <= y
    if y % i == 0
      result << i
      i = i + 1
    else
      i = i + 1
    end
  end
  return result.length
  
end
y = 1000
while divisors(triangle(y)) < 502
  if divisors(triangle(y)) < 502
    y += 1
  else
    return triangle(y)
  end
end

  