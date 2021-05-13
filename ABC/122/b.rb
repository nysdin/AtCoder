s = gets.chomp.chars
def atcg?(s)
  if s == 'A' || s == 'T' || s == 'C' || s == 'G'
    true
  else
    false
  end
end
len = s.length
now = 0
ans = 0
len.times do |i|
  if atcg?(s[i])
    now += 1
  else
    ans = now if now > ans
    now = 0
  end
end
ans = now if now > ans
puts ans
