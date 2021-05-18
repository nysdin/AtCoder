require 'set'
n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
flag = false
s = Set.new
min = a[0]
1.upto(n-1) do |i|
  g = min.gcd(a[i])
  if g == 1
    flag = true
  else
    s.add(g)
  end
end
 
if flag
  puts 1
else
  gcds = s.to_a
  len = gcds.length
  ans = gcds[0]
  len.times do |i|
    (i+1).upto(len-1) do |j|
      g = gcds[i].gcd(gcds[j])
      ans = g if ans > g
    end
  end
  puts ans
end
