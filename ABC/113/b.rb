n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
cur = 10000000000
n.times do |i|
  height = h[i]
  tmper = t - height * 0.006
  now = (a-tmper).abs
  if cur > now
    ans =  i + 1
    cur = now
  end
end
puts ans
