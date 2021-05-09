n = gets.to_i
s = gets.chomp.chars
ans = 1
now = s[0]
(n-1).times do |i|
  if s[i] != s[i+1]
    ans += 1
  end
end
puts ans
