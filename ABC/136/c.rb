n = gets.to_i
h = gets.split.map(&:to_i)
ans = true
max = -1
n.times do |i|
  if h[i] >= max
    max = h[i]
  end
  if max > h[i] + 1
    ans = false
  end
end
if ans
  puts 'Yes'
else
  puts 'No'
end
