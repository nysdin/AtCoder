n = gets.to_i
xu = []
n.times do |i|
  inp = gets.chomp.split
  x = inp[0].to_f
  u = inp[1]
  xu.push([x, u])
end
ans = 0.0
n.times do |i|
  if xu[i][1] == 'JPY'
    ans += xu[i][0]
  else
    ans += 380000.0 * xu[i][0]
  end
end
puts ans
