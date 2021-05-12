n = gets.to_i
v = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
ans = 0
(1<<n).times do |i|
  x = 0
  y = 0
  n.times do |j|
    if (i>>j)&1 == 1
      x += v[j]
      y += c[j]
    end
  end
  ans = x-y if x-y > ans
end
if ans > 0
  puts ans
else
  puts 0
end
