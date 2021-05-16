a, b, c = gets.split.map(&:to_i)
now = a * c
if now <= b
  puts c
else
  puts b / a
end
