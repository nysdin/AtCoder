N, X = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
ans = 0
now = 0
(N-1).times do |i|
  ans = ans.gcd((xx[i]-xx[i+1]).abs)
end

N.times do |i|
  sa = (X-xx[i]).abs
  tmp = sa.gcd(ans)
  now = tmp if now < tmp
end
puts now
