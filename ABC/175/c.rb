x, k, d = gets.split.map(&:to_i)
ans = 0
x = x.abs
q = x / d
if q >= k
  ans = x - k * d
else
  x = x - q * d
  k = k - q
  if k % 2 == 0
    ans = x
  else
    ans = (x - d).abs
  end
end
puts ans
