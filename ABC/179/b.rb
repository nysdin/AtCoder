n = gets.to_i
d = []
ans = 'No'
n.times do |i|
  d1, d2 = gets.split.map(&:to_i)
  d.push([d1, d2])
end
(n-2).times do |i|
  di1, di2 = d[i][0], d[i][1]
  dj1, dj2 = d[i+1][0], d[i+1][1]
  dk1, dk2 = d[i+2][0], d[i+2][1]
  if di1 == di2 && dj1 == dj2 && dk1 == dk2
    ans = 'Yes'
    break
  end
end
puts ans
