a, b, c = gets.split.map(&:to_i)
loop do
  if c == 0
    a -= 1
  else
    b -= 1
  end
  break if a <= 0 || b <= 0
  if c == 0
    b -= 1
  else
    a -= 1
  end
  break if a <= 0 || b <= 0
end
if a <= b
  puts 'Aoki'
else
  puts 'Takahashi'
end
