a = []
5.times do |i|
  b = gets.to_i
  a.push(b)
end
ans = 0
m = 11
last = 0
5.times do |i|
  now = a[i] % 10
  if now != 0 && m > now
    last = i
    m = now
  end
end
5.times do |i|
  next if i == last
  if a[i] % 10 == 0
    ans += a[i]
  else
    ans += a[i] + (10 - a[i] % 10)
  end
end
ans += a[last]
puts ans
