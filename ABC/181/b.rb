n = gets.to_i
ans = 0
n.times do |i|
  a, b = gets.split.map(&:to_i)
  ans += (a+b) * (b-a+1) / 2
end
puts ans
