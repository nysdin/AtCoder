a, b = gets.split.map(&:to_i)
if (a+b).abs % 2 == 1
  puts 'IMPOSSIBLE'
  return
else
  puts (a+b).abs / 2
end
