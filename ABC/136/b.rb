def keta(n)
  ret = 0
  while n > 0
    n /= 10
    ret += 1
  end
  ret
end
n = gets.to_i
ans = 0
m = keta(n)
if m % 2 != 0
  ans += n - 10**(m-1) + 1
  m -= 2
else
  m -= 1
end
while m > 0
  ans += 10**m - 10**(m-1)
  m -= 2
end
puts ans
