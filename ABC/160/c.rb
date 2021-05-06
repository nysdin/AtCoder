k, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 10000000
n.times do |i|
  j = i - 1
  j += n if j < 0
  l = (a[j] - a[i]) % k
  ans = l if l < ans
end
puts ans
