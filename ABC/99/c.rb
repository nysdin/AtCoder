n = gets.to_i
dp = Array.new(n+1)
dp[0] = 0
1.upto(n) do |lim|
  tmp = []
  tmp.push(dp[lim-1])
  k = 6
  while k <= lim
    tmp.push(dp[lim-k])
    k *= 6
  end
  k = 9
  while k <= lim
    tmp.push(dp[lim-k])
    k *= 9
  end
  dp[lim] = tmp.min + 1
end
#p dp
puts dp[n]
