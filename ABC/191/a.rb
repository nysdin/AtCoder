v, t, s, d = gets.split.map(&:to_i)
a = d/v
if a >= t && a <= s
  print('No')
else
  print('Yes')
end
