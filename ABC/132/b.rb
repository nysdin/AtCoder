n = gets.to_i
ps = gets.split.map(&:to_i)
def rank2(a, b, c)
  if a < b && b < c || c < b && b < a
    return 2
  end
  return -1
end
ans = 0
1.upto(n-2) do |i|
  if rank2(ps[i-1], ps[i], ps[i+1]) == 2
    ans += 1
  end
end
puts ans
