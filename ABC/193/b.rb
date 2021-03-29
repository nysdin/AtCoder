n = gets.to_i
ans = -1
n.times do |i|
  a, p, x = gets.split.map(&:to_i)
  now = 0
  if x - a > 0
    if ans < 0 || ans > p
      ans = p
    end
  end
end
puts ans
