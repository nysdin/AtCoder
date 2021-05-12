n, m = gets.split.map(&:to_i)
left = 1
right = n
m.times do |i|
  l, r = gets.split.map(&:to_i)
  left = l if l > left
  right = r if r < right
end
ans = right - left + 1
if ans > 0
  puts ans
else
  puts 0
end
  
