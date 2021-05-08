s = gets.chomp
t = s.reverse
n = s.length
ans = 0
n.times do |i|
  if s[i] != t[i]
    ans += 1
  end
end
puts ans / 2
