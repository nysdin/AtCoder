n = gets.to_i
s = gets.chomp.chars
ll = Array.new(n+1, 0)
rr = Array.new(n+1, 0)
s.each_with_index do |c, i|
  if c == 'W'
    ll[i+1] = ll[i] + 1
  else
    ll[i+1] = ll[i]
  end
end
s.reverse.each_with_index do |c, i|
  if c == 'E'
    rr[n-i-1] = rr[n-i] + 1
  else
    rr[n-i-1] = rr[n-i]
  end
end
ans = 3000001
1.upto(n) do |i|
  now = ll[i-1] + rr[i]
  ans = now if now < ans
end
puts ans
