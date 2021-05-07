n = gets.to_i
p = gets.split.map(&:to_i)
min = n+1
ans = 0
n.times do |i|
  if p[i] <= min
    ans += 1
    min = p[i]
  end
end
puts ans
