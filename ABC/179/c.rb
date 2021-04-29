n = gets.to_i
m = Math.sqrt(n).to_i
ans = 0
i = 1
1.upto(n-1) do |i|
  d = n % i == 0 ? (n / i - 1) : n / i
  ans += d
  i += 1
end
puts ans
