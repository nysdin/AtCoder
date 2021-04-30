n, d = gets.split.map(&:to_i)
ans = 0
n.times do |i|
  x, y = gets.split.map(&:to_i)
  if Math.sqrt(x*x + y*y) <= d.to_f
    ans += 1
  end
end
puts ans
