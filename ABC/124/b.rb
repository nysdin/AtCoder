n = gets.to_i
h = gets.split.map(&:to_i)
max = -1
ans = 0
n.times do |i|
  if h[i] >= max
    ans += 1
    max = h[i]
  end
end
puts ans
  
