task = gets.split.map(&:to_i).sort.reverse
ans = 0
3.times do |i|
  next if i == 0
  ans += (task[i]-task[i-1]).abs
end
puts ans
