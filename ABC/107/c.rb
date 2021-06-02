N, K = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
ans = 1000000000
px = []
mx = []
xx.each do |x|
  if x > 0
    px.push(x)
  elsif x <= 0
    mx.unshift(x.abs)
  else
  end
end

pc = px.length
mc = mx.length

pc.times do |i|
  j = K - i - 1
  now = ans
  if j > 0 && j <= mc
    now = px[i]*2 + mx[j-1]
  elsif i+1 == K
    now = px[i]
  end
  ans = now if ans > now
end

mc.times do |i|
  j = K - i - 1
  now = ans
  if j > 0 && j <= pc
    now = mx[i]*2 + px[j-1]
  elsif i+1 == K
    now = mx[i]
  end
  ans = now if ans > now
end
puts ans
