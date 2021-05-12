n, k = gets.split.map(&:to_i)
ans = 0.0
1.upto(n) do |i|
  now = i
  c = 0
  while now < k
    now *= 2
    c += 1
  end
  ans += 1.0/(2**c)
end
puts sprintf("%.10f", ans/n)
