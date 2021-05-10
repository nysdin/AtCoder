n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
ans = 0
n.times do |i|
  x = a[i]
  y = b[x-1]
  ans += y
  if i != n-1 && x+1 == a[i+1]
    ans += c[x-1]
  end
end
puts ans
