n, m, t = gets.split.map(&:to_i)
max = n
f = 0
flag = false
m.times do |i|
  a, b = gets.split.map(&:to_i)
  n -= a - f
  if n <= 0
    flag = true
    break
  end
  n += b - a
  n = max if n > max
  f = b
end
n -= t - f
if n <= 0 || flag
  puts 'No'
else
  puts 'Yes'
end
