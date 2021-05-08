a, b, k = gets.split.map(&:to_i)
if a >= k
  print a - k, " ", b
elsif a + b >= k
  print 0, " ", b - (k - a)
else
  print 0, " ", 0
end
