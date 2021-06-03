s = gets.chomp.chars
k = gets.to_i
n_cnt = Array.new(100, 0)
CONST = 10**18
s.each_with_index do |ch, i|
  n = ch.to_i
  if n == 1
  	n_cnt[i] = 1
  else
    n_cnt[i] = n * CONST
  end
end
ans = ''
now = 0
(s.length).times do |i|
  now += n_cnt[i]
  if now >= k
    ans = s[i]
    break
  end
end
puts ans
