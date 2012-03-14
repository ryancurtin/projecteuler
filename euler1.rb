y = 0
((1..999).to_a).map { |x| y += x if x % 3 == 0 || x % 5 == 0 }
puts y