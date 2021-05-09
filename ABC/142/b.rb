n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
n.times do |i|
  if h[i] >= k
    ans += 1
  end
end
puts ans
