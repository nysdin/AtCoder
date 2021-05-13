s = gets.chomp.chars
len = s.length
s01 = ["0", "1"] * (len/2+1)
s10 = ["1", "0"] * (len/2+1)
now01 = 0
now10 = 0
len.times do |i|
  now01 += 1 if s01[i] != s[i]
  now10 += 1 if s10[i] != s[i]
end
if now10 > now01
  puts now01
else
  puts now10
end
