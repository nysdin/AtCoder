s, t = gets.chomp.split
a, b = gets.split.map(&:to_i)
u = gets.chomp
if u == s
  a -= 1
elsif u == t
  b -= 1
end
print(a, " ", b)
