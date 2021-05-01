k = gets.to_i
s = gets.chomp
if s.length <= k
  puts s
else
  ret = ''
  k.times do |i|
    ret += s[i]
  end
  ret += '...'
  puts ret
end
