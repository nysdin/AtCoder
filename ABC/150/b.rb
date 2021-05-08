n = gets.to_i
s = gets.chomp.chars
ans = 0
(n-2).times do |i|
  if s[i] == 'A' && s[i+1] == 'B' && s[i+2] == 'C'
    ans += 1
  end
end
puts ans
