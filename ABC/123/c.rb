n = gets.to_i
ts = []
5.times do |i|
  a = gets.to_i
  ts.push(a)
end
min = ts.min
puts (n-1)/min + 5
