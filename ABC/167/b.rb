a, b, c, k = gets.split.map(&:to_i)
ans = 0
if a <= k
  ans += a
else
  ans += k
end
k -= a
if k > b
  k -= b
  ans -= k
end
puts ans
