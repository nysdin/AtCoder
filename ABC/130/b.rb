n, x = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
ans = 1
now = 0
n.times do |i|
  now = l[i] + now
  if now <= x
    ans += 1
  end
end
puts ans
