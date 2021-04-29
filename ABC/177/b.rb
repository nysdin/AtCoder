s = gets.chomp
t = gets.chomp
lens = s.length
lent = t.length
ans = lens
0.upto(lens-lent) do |i|
  now = 0
  0.upto(lent-1) do |j|
    if s[i+j] != t[j]
      flag = false
      now += 1
    end
  end
  ans = now if ans > now
end
puts ans
