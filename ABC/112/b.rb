n, t = gets.split.map(&:to_i)
ans = 10000
n.times do |i|
  c, d = gets.split.map(&:to_i)
  ans = c if d <= t && ans > c
end
if ans == 10000
  puts 'TLE'
else
  puts ans
end
