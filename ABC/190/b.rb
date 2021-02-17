n, s, d = gets.split.map(&:to_i)
magics = n.times.map {gets.split.map(&:to_i)}
judge = 0
magics.each do |m|
  if m[0] < s && m[1] > d
    judge = 1
    break
  end
end
if judge == 1
  puts 'Yes'
else
  puts 'No'
end
