N = gets.to_i
$aa = gets.split.map(&:to_i)
l = -100
r = 1000000001
ans = 0
def calc(b)
  ans = 0
  $aa.each_with_index do |a, i|
    ans += (a-(b+i+1)).abs
  end
  return ans
end
 
while r-l != 1
  mid = (l+r)/2
  now = calc(mid)
  pre = calc(mid-1)
  nxt = calc(mid+1)
  if pre >= now && now <= nxt
    ans = now
  end
  
  if now <= nxt
    r = mid
  else
    l = mid
  end
end
ll = calc(l)
rr = calc(r)
if ll > rr
  ans = rr
else
  ans = ll
end
  
puts ans
