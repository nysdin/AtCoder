n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
c = [0]
d = [0]
n.times do |i|
  c[i+1] = c[i] + a[i]
end
m.times do |i|
  d[i+1] = d[i] + b[i]
end
(n+1).times do |i|
  sum = 0
  if c[i] <= k
    sum += i
    res = k - c[i]
    l = -1
    r = m+1
    while (r - l) > 1
      mid = (r+l)/2      
      if res >= d[mid]
        l = mid
      else
        r = mid
      end
    end
    sum += l
    if ans < sum
      ans = sum
    end

  else
    next
  end
end

puts ans
