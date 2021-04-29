n = gets.to_i
mod = 10**9 + 7
a = gets.split.map(&:to_i)
ans = 0
for i in a
  ans += i
end
ans = ans * ans
for i in a
  ans -= i * i
end
ans = (ans / 2) % mod
if ans < 0
  puts ans + mod
else
  puts ans
end
