n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a = n.times.map{gets.split.map(&:to_i)}
ans = 0
n.times do |i|
  sum = 0
  a[i].each_with_index do |n, j|
    sum += n * b[j]
  end
  if sum + c > 0
    ans += 1
  end
end
puts ans
