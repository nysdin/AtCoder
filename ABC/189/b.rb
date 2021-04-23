n, x = gets.split.map(&:to_i)
ans = -1
x *= 100
n.times do |i|
  v, p = gets.split.map(&:to_i)
  x -= v * p
  if x < 0
    ans = i + 1
    break
  end
end
puts ans
