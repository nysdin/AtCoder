n = gets.to_i
a = gets.split.map(&:to_i)
h = {}
n.times do |i|
  h[i+1] = a[i]
end
h.sort_by{ |_, v| v }.each do |i, _|
  print(i, " ")
end
