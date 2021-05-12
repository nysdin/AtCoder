a, b, c = gets.split.map(&:to_i)
d = a + b
e = b + c
f = a + c
puts [d,e,f].min
