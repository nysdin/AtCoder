N = gets.to_i
a = gets.split.map(&:to_i)
n = 1
a.each do |m|
  n = n.lcm(m)
end
ans = 0
n -= 1
a.each do |m|
  ans += n % m
end
puts ans
