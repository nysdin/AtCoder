a, b = gets.chomp.split
a = a.to_i
b = b.delete('.').to_i
puts (a * b) / 100
