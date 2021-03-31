h, w, x, y = gets.split.map(&:to_i)
mass = []
ans = 0
h.times do |i|
  mass.push(gets.chomp.chars)
end
(x+1).upto(h) do |i|
  if mass[i-1][y-1] == '.'
    ans += 1
  else
    break
  end
end
(x-1).downto(1) do |i|
  if mass[i-1][y-1] == '.'
    ans += 1
  else
    break
  end
end
(y+1).upto(w) do |i|
  if mass[x-1][i-1] == '.'
    ans += 1
  else
    break
  end
end
(y-1).downto(1) do |i|
  if mass[x-1][i-1] == '.'
    ans += 1
  else
    break
  end
end
puts ans += 1
