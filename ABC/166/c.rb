n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
t = Array.new(n, true)
m.times do |i|
  a, b = gets.split.map(&:to_i)
  if h[a-1] <= h[b-1]
    t[a-1] = false
  end
  if h[b-1] <= h[a-1]
    t[b-1] = false
  end
end
t.each do |b|
  ans += 1if b
end
puts ans
