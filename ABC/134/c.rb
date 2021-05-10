n = gets.to_i
a = []
max = -1
max2 = -1
n.times do |i|
  b = gets.to_i
  if b > max
    max2 = max
    max = b
  elsif b > max2
    max2 = b
  end
  a.push(b)
end
n.times do |i|
  if a[i] != max
    puts max
  else
    puts max2
  end
end
