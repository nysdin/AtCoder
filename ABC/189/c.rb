n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
n.times do |s|
  min = a[s]
  ans = min if ans < min
  (s+1).upto(n-1) do |f|
    min = a[f] if min > a[f]
    if ans >= min * (n - s)
      break
    end
    ans = min * (f-s+1) if ans < min * (f-s+1)
  end
end
puts ans
