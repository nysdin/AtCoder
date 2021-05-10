n = gets.to_i
a = Array.new(n, 0)
b = gets.split.map(&:to_i)
a[0] = b[0]
(n-1).times do |i|
  x = b[i]
  if a[i] > b[i]
    a[i] = x
  end
  a[i+1] = x
end
puts a.sum
