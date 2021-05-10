n = gets.to_i
p = gets.split.map(&:to_i)
correct = n.times.map{|i| i+1}
wn = 0
n.times do |i|
  if p[i] != correct[i]
    wn += 1
  end
end

if wn > 2
  puts 'NO'
else
  puts 'YES'
end
