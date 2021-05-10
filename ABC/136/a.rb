a, b, c = gets.split.map(&:to_i)
nokori = a-b
c = c-nokori
if c >= 0
  puts c
else
  puts 0
end
