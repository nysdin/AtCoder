n, m = gets.split.map(&:to_i)
ans = 0
res = 0
pena = Array.new(n+1, 0)
h = {}
h.default = false
m.times do |i|
  p, s = gets.chomp.split
  if h[p] == false
    if s == 'WA'
      i = p.to_i
      pena[i] += 1
    elsif s == 'AC'
      h[p] = true
      ans += 1
    end
  end
end
h.each do |k, v|
  i = k.to_i
  if v == true
    res += pena[i]
  end
end
print ans, " ", res
