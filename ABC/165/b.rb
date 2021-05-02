x = gets.to_i
now = 100
ans = 0
while (now < x)
  now = now * 101 / 100
  ans += 1
end
puts ans
