n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
prev = a[0]
for step in a
  if prev > step
    ans += prev - step
  else
    prev = step
  end
end
puts ans
