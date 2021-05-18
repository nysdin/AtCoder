n = gets.to_i
l = gets.split.map(&:to_i)
sum = l.sum
max = l.max
if max < sum - max
  puts 'Yes'
else
  puts 'No'
end
