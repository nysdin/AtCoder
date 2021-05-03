a, b, c, d = gets.split.map(&:to_i)
turn = 1
while a > 0 && c > 0
  if turn == 1
    c -= b
  else
    a -= d
  end
  turn = 1 - turn
end
if turn == 1
  puts 'No'
else
  puts 'Yes'
end
