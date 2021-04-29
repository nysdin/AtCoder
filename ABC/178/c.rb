n = gets.to_i
ans = 0
mod = (10**9 + 7)
def expo(a, b)
  ret = 1
  b.times do |i|
    ret = ret * a % (10**9 + 7)
  end
  ret
end
ans = expo(10, n) - (expo(9,n)*2 - expo(8,n))
ans %= mod
ans = (ans + mod) % mod
puts ans
