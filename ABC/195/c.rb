n = gets.to_i
ans = 0
while (n > 999)
  b = n
  digit = 0
  while (b > 999)
    b /= 1000
    digit += 1
  end
  d = 1000 ** digit
  diff = (n - d + 1) * digit
  ans += diff
end
puts ans
