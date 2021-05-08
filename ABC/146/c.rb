a, b, x = gets.split.map(&:to_i)
ans = 0
ok = -1
ng = 10**9 + 1

while ng - ok > 1
  mid = (ok+ng)/2
  if a*mid+b*(mid.to_s.length) <= x
    ok = mid
  else
    ng = mid
  end
end
if ok >= 1
  puts ok
else
  puts 0
end
