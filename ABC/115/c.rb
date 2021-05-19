n, k = gets.split.map(&:to_i)
h = []
n.times do |i|
  h.push(gets.to_i)
end
h.sort!
ans = 10**9
(k-1).upto(n-1) do |i|
  now = (h[i] - h[i-k+1])
  ans = now if ans > now
end
puts ans
