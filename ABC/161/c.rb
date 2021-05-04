n, k = gets.split.map(&:to_i)
ans = n % k
rev = (n % k - k).abs
if ans > rev
  puts rev
else
  puts ans
end
