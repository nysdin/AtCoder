n = gets.to_i
x = gets.split.map(&:to_i)
m = 0
y = 0
c = []
n.times do |i|
  m += x[i].abs
  y += x[i] * x[i]
  c.push(x[i].abs)
end
c = c.max
y = Math.sqrt(y)
puts m
puts y
puts c
