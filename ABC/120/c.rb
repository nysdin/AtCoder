s = gets.chomp.chars
n0 = 0
n1 = 0
len = s.length
len.times do |i|
  n0 += 1if s[i] == '0'
end
n1 = len - n0
if n1 > n0
  puts 2*n0
else
  puts 2*n1
end
