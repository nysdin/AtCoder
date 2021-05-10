n, a, b = gets.split.map(&:to_i)
if a*n > b
  puts b
else
  puts a*n
end
