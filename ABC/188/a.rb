x, y = gets.split.map(&:to_i)
if x > y
  tmp = x
  x = y
  y = tmp
end
x += 3
if x > y
  puts 'Yes'
else
  puts 'No'
end
