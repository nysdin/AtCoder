n = gets.chomp
k = n.length
ans = 20
(1 << k).times do |i|
  next if i == 0
  s = []
  rem = 0
  now = 0
  k.times do |j|
    if ((i >> j) & 1 == 1)
      s.push(n[j].to_i)
    else
      rem += 1
    end
  end
  s.each do |k|
    now += k
  end
  if now % 3 == 0 && rem < ans
    ans = rem
  end
end
if ans != 20
  puts ans
else
  puts -1
end
