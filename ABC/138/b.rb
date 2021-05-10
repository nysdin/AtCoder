n = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
n.times do |i|
  sum += 1.0 / a[i]
end
puts 1.0 / sum
