d, t, s = gets.split.map(&:to_i)
if s * t >= d
  puts 'Yes'
else
  puts 'No'
end
