n = gets.to_i
w = gets.split.map(&:to_i)
ans = 100000
s = [0]
n.times do |i|
  s.push(w[i] + s[i])
end
sum = s[-1]
s.each do |num|
  left = num
  right = sum - num
  now = (right - left).abs
  if ans > now
    ans = now
  end
end
puts ans
