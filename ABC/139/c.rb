n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
now = 0
(n-1).times do |i|
  if h[i] >= h[i+1]
    now += 1
    next
  else
    ans = now if now > ans
    now = 0
  end
end
ans = now if now > ans
puts ans
