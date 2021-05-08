n = gets.to_i
s, t = gets.chomp.split
ans = []
n.times do |i|
  ans.push(s[i])
  ans.push(t[i])
end
puts ans.join
