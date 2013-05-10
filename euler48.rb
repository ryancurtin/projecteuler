# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# 
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
# 
# Answer: 9110846700

def last_ten_digits(n)
  result = []
  (1..n).to_a.each do |x|
    num = (x**x).to_s
    if num.length <= 10
      result << num.to_i
    else
      result << num[-10..-1].to_i
    end
  end

  sum = result.inject(:+)
  last_ten = sum.to_s.length > 10 ? sum.to_s[-10..-1].to_i : sum
end

last_ten_digits(1000)
