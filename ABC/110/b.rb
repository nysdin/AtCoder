n, m, x, y = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
yy = gets.split.map(&:to_i)
xmax = xx.max
ymin = yy.min
xmax = x if x > xmax
ymin = y if y < ymin
if ymin - xmax >= 1 && y - x >= 1
  puts 'No War'
else
  puts 'War'
end
