n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!.reverse!
sum = a.sum
ans = 0
n.times do |i|
  if a[i] * 4  * m >= sum
    ans += 1
  end
end
if ans >= m
  puts 'Yes'
else
  puts 'No'
end
