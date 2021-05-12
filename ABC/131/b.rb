n, l = gets.split.map(&:to_i)
min = l
max = l + n - 1
ans = (min..max).to_a.sum
if min > 0
  puts ans - min
elsif max < 0
  puts ans - max
else
  puts ans
end
