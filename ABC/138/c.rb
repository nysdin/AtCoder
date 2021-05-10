n = gets.to_i
v = gets.split.map(&:to_i)
v.sort!.reverse!
(n-1).times do |i|
  a = v.pop
  b = v.pop
  v.push((a+b)/2.0)
end
puts v
